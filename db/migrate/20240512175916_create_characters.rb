class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :background_story
      t.integer :level
      t.integer :experience

      t.timestamps
    end
  end
end
