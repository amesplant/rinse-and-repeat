class Deck < ActiveRecord::Base
  validates_presence_of :name { limit: 50 }

  has_many :cards
  belongs_to :round
end
