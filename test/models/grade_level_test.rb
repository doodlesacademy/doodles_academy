require 'test_helper'

class GradeLevelTest < ActiveSupport::TestCase
  def setup
    @grade_level = GradeLevel.first
  end

  test 'grade level has lesson sets' do
    assert @grade_level.lesson_sets.count == 1
  end
end
