class CreateEnemies < ActiveRecord::Migration[7.0]
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :strength
      t.integer :dexterity
      t.integer :wisdom
      t.integer :intelligence
      t.integer :charisma
      t.integer :hit_points

      t.timestamps
    end
  end
end
