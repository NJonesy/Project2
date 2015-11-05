class AddPostImagesToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :post_images, :string
  end
end
