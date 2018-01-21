require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  def setup
    @project = Project.first
  end

  test 'that a project has units' do
    assert @project.units.count == 1
  end

  test 'that a project has lesson sets' do
    assert @project.lesson_sets.count == 2
  end

  test 'that a project has a hero image' do
    assert @project.hero_image.present?
  end
end
