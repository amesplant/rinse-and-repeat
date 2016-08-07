class Deck < ActiveRecord::Base
  validates_presence_of :name, { limit: 50 }

  has_many :cards
  has_many :rounds
end
