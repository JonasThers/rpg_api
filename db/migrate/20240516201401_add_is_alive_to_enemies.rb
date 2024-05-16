class AddIsAliveToEnemies < ActiveRecord::Migration[7.0]
  def change
    add_column :enemies, :is_alive, :boolean, :default => true
  end
end
