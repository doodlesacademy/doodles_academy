module Imageable
  extend ActiveSupport::Concern

  included do
    has_many :images, as: :imageable
  end

  def hero_image
    images.where(role: Image.roles[:hero]).first
  end
end
