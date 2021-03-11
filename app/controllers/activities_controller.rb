class ActivitiesController < ApplicationController
  def index
    activity = Activity.new(activity_params)
    @activities = Activity.where(category: activity.category)
    # @activities = Activity.where(category_id: params[:category_id])
    # @activities = Activity.all
    @category = activity.category
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
    @category = Category.find(params[:category_id])
  end

  def create
  end

  private

  def activity_params
    params.require(:activity).permit(:start_time, :address, :category_id)
  end
end
