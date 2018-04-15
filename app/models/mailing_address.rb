class MailingAddress < ApplicationRecord
  belongs_to :mail_addressable, polymorphic: true
end
