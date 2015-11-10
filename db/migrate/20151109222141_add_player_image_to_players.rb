class AddPlayerImageToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :player_image, :string
  end
end
