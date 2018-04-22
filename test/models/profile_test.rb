require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  def setup
    @user = User.find_by(email: 'gandalf@middle-earth.edu')
    @profile = Profile.find_by(user_id: @user.id)
    @address = MailingAddress.where(
      mail_addressable_type: 'Profile',
      mail_addressable_id: @profile.id
    ).first
  end

  test 'user association' do
    assert @profile.user == @user
  end

  test 'has mailing address associated' do
    assert @profile.mailing_address == @address
  end
end
