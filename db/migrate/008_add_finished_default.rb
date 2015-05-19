class AddFinishedDefault < ActiveRecord::Migration
  def up
    change_column_default :games, :finished, false
  end

  def down
    change_column_default :games, :finished, nil
  end
end
