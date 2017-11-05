class LessonSet < ApplicationRecord
  belongs_to :grade_level
  belongs_to :project
  has_many :lessons
end
