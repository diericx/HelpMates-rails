class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  attr_accessor :rating
  attr_accessor :reviews
  attr_accessor :price
end
