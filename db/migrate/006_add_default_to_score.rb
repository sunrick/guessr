class AddDefaultToScore < ActiveRecord::Migration
  def up
    change_column_default :players, :score, 0
    Player.find_each do |p|
      p.update(score: 0) if p.score.nil?
    end
  end

  def down
    change_column_default :players, :score, nil
  end
end
