class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new
    @activity = Activity.find(params[:activity_id])
    @bookmark.user = current_user
    @bookmark.activity = @activity
    @bookmark.save
  end

  def destroy
    @bookmark = Bookmark.find_by(params[:activity_id])
    @bookmark.destroy
    redirect_to dashboard_path, :notice => "You've removed this activity from your bookmarks"
  end

  private

  def activity_params
    params.require(:activity).permit(:start_time, :address, :category_id)
  end
end
