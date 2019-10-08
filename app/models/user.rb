class User < ActiveRecord::Base
  has_many :characters
  has_secure_password
  validates :username, :email, presence: true
end