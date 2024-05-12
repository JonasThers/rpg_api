class AddDefaultValuesToExperienceAndLevel < ActiveRecord::Migration[7.0]
  def change
    change_column :characters, :level, :integer, :default => 1
    change_column :characters, :experience, :integer, :default => 0
  end
end
