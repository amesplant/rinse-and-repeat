require 'faker'

Deck.create(name: "Laundry")
Deck.create(name: "Suds")
Deck.create(name: "Pets")

10.times do
  Card.create(question: "Laundry questions", correct_answer_id: rand(1..5), deck_id: rand(1..10))
end

10.times do
  Card.create(question: "Suds questions", correct_answer_id: rand(1..5), deck_id: rand(1..10))
end

10.times do
  Card.create(question: "Pets questions", correct_answer_id: rand(1..5), deck_id: rand(1..10))
end

40.times do
  PossibleAnswer.create(answer: Faker::Lorem.sentence, card_id: 1)
end

40.times do
  PossibleAnswer.create(answer: Faker::Lorem.sentence, card_id: 2)
end

40.times do
  PossibleAnswer.create(answer: Faker::Lorem.sentence, card_id: 3)
end
