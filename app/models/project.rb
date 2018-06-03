class Project < ApplicationRecord
  include Imageable
  include Blockable
  include Taggable

  has_and_belongs_to_many :units
  has_many :lesson_sets
end
