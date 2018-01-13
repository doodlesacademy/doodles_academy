require 'test_helper'

class UnitTest < ActiveSupport::TestCase
  def setup
    @unit = Unit.first
  end

  test 'unit has projects' do
    assert @unit.projects.count == 1
  end
end
