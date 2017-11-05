class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string, :title
      t.belongs_to :lesson_set, foreign_key: true

      t.timestamps
    end
  end
end
