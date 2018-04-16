class Image < ApplicationRecord
  include Rails.application.routes.url_helpers

  belongs_to :imageable, polymorphic: true
  enum role: [:default, :hero]

  has_one_attached :file

  def url
    url_for(file)
  end

  def download_url
    rails_blob_url(file, disposition: 'attachment')
  end

  def thumb_url
    file.variant(resize: '100x100>')
  end
end
