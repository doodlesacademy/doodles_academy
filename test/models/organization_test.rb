require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  def setup
    @org = Organization.find_by(name: 'Middle-Earth')
    @address = MailingAddress.where(
      mail_addressable_type: 'Organization',
      mail_addressable_id: @org.id
    ).first
  end

  test 'has mailing address associated' do
    assert @org.mailing_address == @address
  end

  test 'has users through memberships' do
    assert @org.users.count == 2
  end
end
