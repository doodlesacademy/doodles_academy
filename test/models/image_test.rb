require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  def setup
    @image = Image.first
    image_path = Rails.root.join('test', 'fixtures', 'files', 'muaddib.png')
    @image_file = File.open(image_path)
  end

  test 'image has an imageable' do
    @project = Project.first
    assert @image.imageable == @project
  end

  test 'can attach image' do
    assert !@image.file.attached?

    @image.file.attach(io: @image_file, filename: 'muaddib.png', content_type: 'image/png')

    assert @image.file.attached?
  end
end
