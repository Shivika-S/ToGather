class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :destroy]
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    if params[:activity] && activity_params[:category_id]
      @start_time = format_datetime
      @category = Category.find(params[:activity][:category_id]) if params[:activity][:category_id].present?
      @activities = Activity.where(category: @category)
      @activities = @activities.where("start_time > ?", @start_time)
      # @activities = Category.find_by(name: "Sweat").activities
      @search_category = activity_params[:category_id]
      @search_start_time = @start_time
    else
      @activities = Activity.all
    end
    params[:activity].nil? ? @activity = Activity.new : @activity = Activity.new(activity_params)
  end

  def show
    @markers = [{
      lat: @activity.latitude,
      lng: @activity.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { activity: @activity }),
      image_url: helpers.asset_url('placeholder.png')
    }]
    # @chatroom will be set to nil if no chat room with same name as activity exist
    @chatroom = Chatroom.find_by(name: @activity.name)
    # ||= will only set to value if @chatroom is nil
    @chatroom ||= Chatroom.create!(name: @activity.name)
    # lets create a link between the user and the chatroom.. AKA a ChatroomUser instance
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.category = Category.find(params[:activity][:category])
    @activity.user = current_user
    if @activity.save
      redirect_to category_activity_path(@activity.category, @activity)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy
    @activity.destroy
    redirect_to dashboard_path, :notice => "Your Activity has been deleted"
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def format_datetime
    if params[:activity]['start_time(1i)'] && params[:activity]['start_time(2i)'] && params[:activity]['start_time(3i)']
      date_str = "#{params[:activity]['start_time(1i)']}-#{params[:activity]['start_time(2i)']}-#{params[:activity]['start_time(3i)']}"
    elsif params[:activity][:start_time]
      date_str = params[:activity][:start_time]
    end
    utc_datetime = Date.parse(date_str).to_datetime
    utc_datetime.in_time_zone('Australia/Melbourne') # could add timezone to user and access current_user.timezone here
    # user_date = utc_date.in_time_zone(time_zone)
  end

  # def activities_on_day(activities, date)
  #   activities = activities.where(:start_time => date.beginning_of_day..date.end_of_day)
  # end

  def activity_params
    params.require(:activity).permit(:name, :start_time, :address, :category_id, :cover_photo, photos: [])
  end
end
