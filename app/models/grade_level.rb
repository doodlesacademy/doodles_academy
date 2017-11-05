class GradeLevel < ApplicationRecord
  has_many :lesson_sets
  enum level: [ :upper, :lower ]
end
