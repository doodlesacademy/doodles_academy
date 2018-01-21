class Lesson < ApplicationRecord
  include Imageable

  has_and_belongs_to_many :lesson_sets
end
