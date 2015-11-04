class Picture < ActiveRecord::Base

  belongs_to :team

  mount_uploader :post_images, PostImagesUploader

end
