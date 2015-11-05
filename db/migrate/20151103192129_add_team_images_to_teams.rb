class AddTeamImagesToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :team_images, :string
  end
end
