class Group < ApplicationRecord

  has_many :users, through: :group_users
  has_many :group_users
  has_many :messages

  validates :name, uniqueness: true, presence: true

  before_validation :member_present_check

  private

  def member_present_check
    throw(:abort) unless self.user_ids.present?
  end

end

