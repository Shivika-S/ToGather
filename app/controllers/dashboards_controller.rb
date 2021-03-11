class DashboardsController < ApplicationController
  def show
    @bookmarks = current_user.bookmarks
  end
end
