class Organization < ApplicationRecord
  include MailAddressable

  has_many :memberships
  has_many :users, through: :memberships

  def admins
    users.merge(Membership.admins)
  end

  def instructors
    users.merge(Membership.instructors)
  end

  def students
    users.merge(Membership.students)
  end
end
