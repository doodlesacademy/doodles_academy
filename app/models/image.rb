class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  enum role: [:default, :hero]
end
