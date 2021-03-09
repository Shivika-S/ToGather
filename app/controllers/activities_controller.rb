class ActivitiesController < ApplicationController
  def index
    @activities = Activity.where(category_id: params[:category_id])
    @category = Category.find(params[:category_id])
  end

  def show
    @activity = Activity.find(params[:id])
    @markers = [{
      lat: @activity.latitude,
      lng: @activity.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { activity: @activity })
    }]
  end

  def new
    @activity = Activity.new
    @category = Category.find(params[:category_id])
  end

  def create
    @activity = Activity.new(activity_params)
    @category = Category.find(params[:category_id])
    @activity.category = @category

    if @activity.address.present? && @activity.start_time.present?
      redirect_to controller: 'activities', action: 'index', id: params[:category_id], address: @activity.address, start_time: @activity.start_time
    else
      render :new
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:start_time, :address)
  end
end
