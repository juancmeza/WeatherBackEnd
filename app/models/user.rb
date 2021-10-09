class User < ApplicationRecord

  has_many :user_locations, :dependent => :destroy

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
