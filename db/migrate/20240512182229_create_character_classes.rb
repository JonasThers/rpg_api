class CreateCharacterClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :character_classes do |t|
      t.string :name
      t.integer :strength
      t.integer :dexterity
      t.integer :wisdom
      t.integer :intelligence
      t.integer :charisma

      t.timestamps
    end
  end
end
