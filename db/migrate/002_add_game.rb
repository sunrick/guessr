class AddGame < ActiveRecord::Migration
  def up
    create_table :games do |t|
      t.integer :guesses
      t.integer :answer
    end
  end

  def down
    drop_table :games
  end
end
