module Blockable
  extend ActiveSupport::Concern

  included do
    has_many :blocks, as: :blockable
  end
end
