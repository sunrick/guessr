class AddDefaultToScore < ActiveRecord::Migration
  def up
    change_column_default :players, :score, 0
  end

  def down
    change_column_default :players, :score, nil
  end
end
