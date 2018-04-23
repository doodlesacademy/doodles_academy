class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_one :membership
  has_one :organization, through: :membership

  def admin?
    independent? || membership.admin?
  end

  def instructor?
    !independent? && membership.instructor?
  end

  def student?
    !independent? && membership.student?
  end

  def independent?
    membership.nil?
  end
end
