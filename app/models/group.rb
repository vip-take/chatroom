class Group < ApplicationRecord

  has_many :users, through: :group_users
  has_many :group_users

  validates :name, uniqueness: true, presence: true

end

