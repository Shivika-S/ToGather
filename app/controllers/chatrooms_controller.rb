class ChatroomsController < ApplicationController
    def show
        
        @chatroom = Chatroom.find(params[:id])
        @message = Message.new
        @current_user = current_user
        ChatroomUser.create(chatroom: @chatroom, user: current_user) unless is_joined_to_chatroom?
    end

    private

    def is_joined_to_chatroom?
        current_user.chatrooms.include?(@chatroom)
    end
end
