require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.first
    @profile = Profile.first
  end

  test 'user has a profile' do
    assert @user.profile == @profile
  end
end
