class AddPlayerIdToGames < ActiveRecord::Migration
  def up
    add_column :games, :player_id, :integer
  end

  def down
    remove_column :games, :player_id
  end
end
