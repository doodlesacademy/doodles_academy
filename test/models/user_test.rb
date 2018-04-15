require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.find_by(email: 'gandalf@middle-earth.edu')
    @profile = Profile.find_by(user_id: @user.id)
    @org = Organization.find_by(name: 'Middle-Earth')
  end

  test 'user has a profile' do
    assert @user.profile == @profile
  end

  test 'user belongs to an organization' do
    assert @user.organization == @org
  end

  test 'user admin role helper work' do
    assert @user.admin?
  end

  test 'user instructor role helper works' do
    user = User.find_by(email: 'elrond@middle-earth.edu')
    assert user.instructor?
  end

  test 'user student role helper works' do
    user = User.find_by(email: 'frodo@middle-earth.edu')
    assert user.student?
  end
end
