require 'test_helper'

class LessonSetTest < ActiveSupport::TestCase
  def setup
    @lesson_set = LessonSet.first
  end

  test 'lesson set has lessons' do
    assert @lesson_set.lessons.count == 2
  end

  test 'lesson set has a grade level' do
    assert !@lesson_set.grade_level.nil?
  end

  test 'lesson set belongs to project' do
    assert !@lesson_set.project.nil?
  end
end
