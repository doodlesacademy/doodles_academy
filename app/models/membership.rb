class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :organization

  enum role: [:student, :instructor, :admin]

  scope :admins, -> { where(role: :admin) }
  scope :instructors, -> { where(role: :instructor) }
  scope :students, -> { where(role: :student) }
end
