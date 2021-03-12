class ChatroomsController < ApplicationController
    def show
        @chatroom = Chatroom.find(params[:id])
        @message = Message.new
    end

    def destroy
        @messages = Message.all
        @messages.destroy
        redirect_to dashboard_path, :notice => "You've removed this activity from your bookmarks"
    end
end
