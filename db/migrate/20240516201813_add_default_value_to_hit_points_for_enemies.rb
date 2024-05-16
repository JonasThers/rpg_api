class AddDefaultValueToHitPointsForEnemies < ActiveRecord::Migration[7.0]
  def change
    change_column :enemies, :hit_points, :integer, :default => 1
  end
end
