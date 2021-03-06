class Team < ActiveRecord::Base

  mount_uploader :team_images, TeamImagesUploader

  has_many :players
  has_many :pictures
  has_many :videos
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
