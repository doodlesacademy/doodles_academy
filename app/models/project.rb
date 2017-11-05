class Project < ApplicationRecord
  belongs_to :unit
  has_many :lesson_sets
end
