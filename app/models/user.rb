class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups, :dependent => :delete_all
  has_many :owned_friends, :class_name => 'Friend', :foreign_key => 'friend_id',:dependent => :destroy
  has_many :user_friends, :class_name => 'Friend', :foreign_key => 'user_id',:dependent => :destroy
  has_many :group_members, :dependent => :delete_all
  has_many :orders
  has_many :invited_members
  has_many :order_informations
end
