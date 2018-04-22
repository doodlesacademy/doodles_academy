class Profile < ApplicationRecord
  include MailAddressable

  belongs_to :user
end
