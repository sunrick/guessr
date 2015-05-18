class AddLastGuess < ActiveRecord::Migration
  def up
    add_column :games, :last_guess, :integer
  end

  def down
    remove_column :games, :last_guess
  end
end
