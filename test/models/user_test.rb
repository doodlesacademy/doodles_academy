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
end
