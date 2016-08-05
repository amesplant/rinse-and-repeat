class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :answers
  has_one :correct_answer, class_name: "PossibleAnswer"
end
