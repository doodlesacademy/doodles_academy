class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  enum role: [:default, :hero]

  has_attached_file :attachment,
                    styles: { thumb: '100x100>' },
                    default_url: '/images/:styles/missing.png'
  validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\z/
end
