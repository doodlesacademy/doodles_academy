class LessonSet < ApplicationRecord
  belongs_to :grade_level
  belongs_to :project
  has_and_belongs_to_many :lessons
end
