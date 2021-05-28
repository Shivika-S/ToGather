class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @activity = Activity.new
    @categories = Category.all
    # Please don't delete code below.
    # @random_event = Activity.all.sample
  end

  def new
    @activity = Activity.new
    @category = Category.find(params[:category_id])
  end

  def create
  end

  private

  def activity_params
    params.require(:activity).permit(:start_time, :address)
  end
end
