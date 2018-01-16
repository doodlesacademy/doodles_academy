class CreateProjectsAndUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title

      t.timestamps
    end

    create_table :units do |t|
      t.string :title

      t.timestamps
    end

    create_table :projects_units, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :unit, index: true
    end
  end
end
