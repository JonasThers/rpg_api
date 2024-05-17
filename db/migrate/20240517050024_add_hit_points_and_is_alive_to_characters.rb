class AddHitPointsAndIsAliveToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :hit_points, :integer, :default => 10
    add_column :characters, :is_alive, :boolean, :default => true
  end
end
