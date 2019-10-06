class Character < ActiveRecord::Base
  belongs_to :user
  validates :name, :class, :race, presence: true
end