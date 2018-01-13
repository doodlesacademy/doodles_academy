class Lesson < ApplicationRecord
  has_and_belongs_to_many :lesson_sets
end
