class BookmarksController < ApplicationController
   def create
    @bookmark = Bookmark.new
    @activity = Activity.find(params[:activity_id])
    @bookmark.user = current_user
    @bookmark.activity = @activity
    if @bookmark.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

   def destroy
    @activity.destroy
    redirect_to dashboard_path, :notice => "You've removed this activity from your bookmarks"
  end

  private

  def activity_params
    params.require(:activity).permit(:start_time, :address, :category_id)
  end
end
