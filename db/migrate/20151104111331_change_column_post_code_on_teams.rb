class ChangeColumnPostCodeOnTeams < ActiveRecord::Migration
  def change
    change_column :teams, :post_code, :string
  end
end
