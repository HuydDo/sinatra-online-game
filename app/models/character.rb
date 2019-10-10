class Character < ActiveRecord::Base
  belongs_to :user
  validates :name, :character_class, :race, presence: true
end