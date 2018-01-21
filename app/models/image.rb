class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  enum type: [:default, :hero]
end
