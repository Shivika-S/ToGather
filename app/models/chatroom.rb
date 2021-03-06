class Chatroom < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_many :chatroom_users, dependent: :destroy
    has_many :users, through: :chatroom_users
end
