class User < ActiveRecord::Base
  has_many :characters
  has_secure_password
  validates :name, :email, presence: true
end