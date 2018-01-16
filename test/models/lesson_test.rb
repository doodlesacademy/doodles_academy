require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  def setup
    @lesson = Lesson.first
  end

  test 'lesson has lesson sets' do
    assert @lesson.lesson_sets.count == 1
  end
end
