class ActivitiesController < ApplicationController
  def index
  end

  def show
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
