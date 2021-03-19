class BookmarksController < ApplicationController
  def show
    @bookmark = Bookmark.new
    @activity = Activity.find(params[:activity_id])
    @bookmark.user = current_user
    @bookmark.activity = @activity
    # if @bookmark.save
    #   redirect_back fallback_location: activities_path(activity: { start_time: params[:activity][:start_time], category_id: params[:activity][:category_id]})
    #   # redirect_to activities_path(activity: { start_time: params[:activity][:start_time], category_id: params[:activity][:category_id]})
    # end
  end

  def create
    @bookmark = Bookmark.new
    @activity = Activity.find(params[:activity_id])
    @bookmark.user = current_user
    @bookmark.activity = @activity
    if @bookmark.save
      redirect_back fallback_location: activity_path(@activity)
    end
  end

  def destroy
    @bookmark = Bookmark.find_by(params[:activity_id])
    @bookmark.destroy
    redirect_back fallback_location: dashboard_path, :notice => "You've removed this activity from your bookmarks"
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :start_time, :address, :category_id, :cover_photo, photos: [])
  end
end
