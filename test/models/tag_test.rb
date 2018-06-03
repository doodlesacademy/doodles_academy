require 'test_helper'

class TagTest < ActiveSupport::TestCase
  test 'that simple tagging works' do
    @tag = Tag.all.first
    @project = Project.find_by(title: 'Superheroes')
    assert @tag.projects.first == @project
  end
end
