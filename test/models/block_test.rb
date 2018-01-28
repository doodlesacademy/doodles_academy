require 'test_helper'

class BlockTest < ActiveSupport::TestCase
  def setup
    @block = Block.first
  end

  test 'block has a blockable' do
    @project = Project.first
    assert @block.blockable == @project
  end
end
