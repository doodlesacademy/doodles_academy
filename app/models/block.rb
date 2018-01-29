class Block < ApplicationRecord
  belongs_to :blockable, polymorphic: true
  enum role: [:default], _prefix: :role
  enum style: [:default], _prefix: :style
end
