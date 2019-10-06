class Character < ActiveRecord::Base
  belongs_to :user
  validates :name, :character_class, :race, presence: true
  # validates :name, :character_class, :race, :user_id, presence: true
end