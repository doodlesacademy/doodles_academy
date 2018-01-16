class CreateGradeLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :grade_levels do |t|
      t.integer :level, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
