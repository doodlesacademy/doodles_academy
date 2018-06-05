class Tag < ApplicationRecord
  has_many :taggings
  has_many :projects, through: :taggings, source: :taggable, source_type: 'Project'
end
