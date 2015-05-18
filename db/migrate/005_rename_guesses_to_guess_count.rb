class RenameGuessesToGuessCount < ActiveRecord::Migration
  def up
    rename_column :games, :guesses, :guess_count
  end

  def down
    rename_column :games, :guess_count, :guesses
  end
end
