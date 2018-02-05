class Project < ApplicationRecord
  include Imageable
  include Blockable

  has_and_belongs_to_many :units
  has_many :lesson_sets
end
