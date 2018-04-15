module MailAddressable
  extend ActiveSupport::Concern

  included do
    has_one :mailing_address, as: :mail_addressable
  end
end
