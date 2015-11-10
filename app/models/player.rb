class Player < ActiveRecord::Base

  belongs_to :team

  mount_uploader :player_image, PlayerImageUploader
  end

