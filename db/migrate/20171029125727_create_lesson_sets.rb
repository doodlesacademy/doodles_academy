class CreateLessonSets < ActiveRecord::Migration[5.1]
  def change
    create_table :lesson_sets do |t|
      t.belongs_to, :project, foreign_key: true
      t.belongs_to :grade_level, foreign_key: true

      t.timestamps
    end
  end
end
