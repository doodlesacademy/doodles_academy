require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  def setup
    @org = Organization.first
    @address = MailingAddress.first
  end

  test 'has mailing address associated' do
    assert @org.mailing_address == @address
  end
end
