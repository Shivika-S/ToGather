class DashboardsController < ApplicationController
  def show
    @bookmarks = current_user.bookmarks
    @activities = current_user.activities
  end
end
