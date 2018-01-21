class Project < ApplicationRecord
  include Imageable

  has_and_belongs_to_many :units
  has_many :lesson_sets
end
