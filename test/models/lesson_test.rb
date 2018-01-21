require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  def setup
    @lesson = Lesson.first
  end

  test 'lesson has lesson sets' do
    assert @lesson.lesson_sets.count == 1
  end

  test 'that a lesson has a hero image' do
    assert @lesson.hero_image.present?
  end
end
