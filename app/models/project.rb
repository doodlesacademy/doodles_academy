class Project < ApplicationRecord
  has_and_belongs_to_many :units
  has_many :lesson_sets
  has_many :images, as: :imageable
end
