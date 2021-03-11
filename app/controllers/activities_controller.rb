class ActivitiesController < ApplicationController
  def index
    if params[:activity] && activity_params[:category_id] && activity_params[:start_time]
      @start_time = format_datetime(params[:activity][:start_time])
      @category = Category.find(params[:activity][:category_id]) if params[:activity][:category_id].present?
      @activities = Activity.where(category: @category)
      @activities = @activities.where("start_time > ?", @start_time)
    else
      @activities = Activity.all
    end
    @activity = Activity.new
    @random_event = Activity.all.sample
  end

  def show
    @activity = Activity.find(params[:id])
    @random_event = Activity.all.sample
    @markers = [{
      lat: @activity.latitude,
      lng: @activity.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { activity: @activity }),
      # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
    }]
  end

  def new
    @activity = Activity.new
  end

  def create
  end

  private

  def format_datetime(date)
    utc_datetime = Date.parse(date).to_datetime
    utc_datetime.in_time_zone('Australia/Melbourne') # could add timezone to user and access current_user.timezone here
    # user_date = utc_date.in_time_zone(time_zone)
  end

  def activities_on_day(activities, date)
    activities = activities.where(:start_time => date.beginning_of_day..date.end_of_day)
  end

  def activity_params
    params.require(:activity).permit(:start_time, :address, :category_id)
  end
end
