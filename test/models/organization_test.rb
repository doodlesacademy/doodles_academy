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
    assert @org.users.count == 4
  end

  test 'has admins instance method' do
    assert @org.admins.count == 1
  end

  test 'has instructors instance method' do
    assert @org.instructors.count == 1
  end

  test 'has students instance method' do
    assert @org.students.count == 2
  end
end
