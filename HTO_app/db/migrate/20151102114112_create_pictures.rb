class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :team_id
      t.string :title
      t.string :caption
      t.string :image

      t.timestamps null: false
    end
  end
end
