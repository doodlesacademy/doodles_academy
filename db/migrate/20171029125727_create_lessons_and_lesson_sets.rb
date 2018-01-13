class CreateLessonSets < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string, :title

      t.timestamps
    end

    create_table :lesson_sets do |t|
      t.string, :title
      t.belongs_to :grade_level, index: true
      t.belongs_to :project, index: true

      t.timestamps
    end

    create_table :lessons_lesson_sets, id: false do |t|
      t.belongs_to :lesson, index: true
      t.belongs_to :lesson_set, index: true
    end
  end
end
