require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  def setup
    @profile = Profile.first
    @user = User.find_by(email: 'gandalf@middle-earth.edu')
  end

  test 'user association' do
    assert @profile.user == @user
  end
end
