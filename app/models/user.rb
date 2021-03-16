class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookmarks, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
