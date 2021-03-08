class ActivitiesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @category = Category.find(params[:category_id])
    @activity.category = @category

    if @activity.address.present? && @activity.date.present?
      redirect_to controller: 'activities', action: 'index', id: params[:category_id], address: @activity.address, date: @activity.date
    else
      render :new
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:date, :address)
  end
end
