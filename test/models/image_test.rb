require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  def setup
    @image = Image.first
  end

  test 'image has an imageable' do
    @project = Project.first
    assert @image.imageable == @project
  end
end
