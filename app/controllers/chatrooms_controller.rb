class ChatroomsController < ApplicationController
    def show
        @chatroom_index = Chatroom.all
        @chatroom = Chatroom.find(params[:id])
        @message = Message.new
        @current_user = current_user
    end
end
