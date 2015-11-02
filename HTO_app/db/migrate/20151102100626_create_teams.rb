class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.integer :post_code

      t.timestamps null: false
    end
  end
end
