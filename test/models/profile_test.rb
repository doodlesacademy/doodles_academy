require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  def setup
    @user = User.find_by(email: 'gandalf@middle-earth.edu')
    @profile = Profile.find_by(user_id: @user.id)
  end

  test 'user association' do
    assert @profile.user == @user
  end
end
