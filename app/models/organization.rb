class Organization < ApplicationRecord
  include MailAddressable

  has_many :memberships
  has_many :users, through: :memberships
end
