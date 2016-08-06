Deck.create(name: "Cleanliness")
Deck.create(name: "Suds")
Deck.create(name: "Pets")

# Deck(id: integer, name: string, created_at: datetime, updated_at: datetime)

# Cleanliness ====================================================
Card.create(question: "Where do the socks go?", correct_answer_id: 1, deck_id: 1)

Card.create(question: "Which of these is a real social club activity?", correct_answer_id: 4, deck_id: 1)
# Cleaning public toilets by some Good Samaritans in Japan.
Card.create(question: "Which one was originally a wallpaper stain remover?",correct_answer_id: 7, deck_id: 1)

# Suds =============================================================
Card.create(question: "Why do some people eat small amounts of detergent?", correct_answer_id: 10, deck_id: 2)

Card.create(question: "Who is Mr. Proper?", correct_answer_id: 13, deck_id: 2)
# Mr. Clean (in Europe)
# wrong answers, Mr. Sparkle (Japan),

Card.create(question: "What is cleaning advice for lazy people?",correct_answer_id: 16, deck_id: 2)
# Eat food out of a tortilla to avoid washing bowls


# Pets ==============================================================
Card.create(question: "Think of another question?", correct_answer_id: 19, deck_id: 3)
# cockroach swatter slippers

Card.create(question: "______________ is a soap you can buy in Lincoln Square.", correct_answer_id: 22, deck_id: 3)
# Cat Food Scented Soap, or Absinthe Soap, or Bacon

Card.create(question: "Think of another question?", correct_answer_id: 25, deck_id: 3)

# Card(id: integer, question: string, correct_answer_id: integer, deck_id: integer, created_at: datetime, updated_at: datetime)

# Possible Answers ======================================================
PossibleAnswer.create(answer: "On your feet", card_id: 1)

PossibleAnswer.create(answer: "Behind the wash basin.", card_id: 1)

PossibleAnswer.create(answer: "Sock Heaven", card_id: 1)

PossibleAnswer.create(answer: "Cleaning public toilets by some Good Samaritans in Japan.", card_id: 2)

PossibleAnswer.create(answer: "Cleaning sink drains by hand in Sweden.", card_id: 2)

PossibleAnswer.create(answer: "Cleaning .....", card_id: 2)

PossibleAnswer.create(answer: "Play Doh", card_id: 3)

PossibleAnswer.create(answer: "Silly Putty", card_id: 3)

PossibleAnswer.create(answer: "Day-Glo Slime", card_id: 3)

PossibleAnswer.create(answer: "Pica", card_id: 4)

PossibleAnswer.create(answer: "Something else", card_id: 4)

PossibleAnswer.create(answer: "Something else again", card_id: 4)

PossibleAnswer.create(answer: "Mr. Clean (in Europe)", card_id: 5)

PossibleAnswer.create(answer: "Mr. Sparkle (in Japan)", card_id: 5)

PossibleAnswer.create(answer: "Mr. Maple (in Canada)", card_id: 5)

PossibleAnswer.create(answer: "Eat food out of a tortilla to avoid washing bowls", card_id: 6)

PossibleAnswer.create(answer: "Something lazy", card_id: 6)

PossibleAnswer.create(answer: "Something else lazy", card_id: 6)

PossibleAnswer.create(answer: "Pet answer 1", card_id: 7)

PossibleAnswer.create(answer: "Pet answer 2", card_id: 7)

PossibleAnswer.create(answer: "Pet answer 3", card_id: 7)

PossibleAnswer.create(answer: "Cat Food Scented Soap", card_id: 8)

PossibleAnswer.create(answer: "Dog Breath Scented Soap", card_id: 8)

PossibleAnswer.create(answer: "Fish Scale Soap", card_id: 8)

PossibleAnswer.create(answer: "Pet answer again 1", card_id: 9)

PossibleAnswer.create(answer: "Pet answer again 2", card_id: 9)

PossibleAnswer.create(answer: "Pet answer again 3", card_id: 9)



# PossibleAnswer(id: integer, answer: string, card_id: integer, created_at: datetime, updated_at: datetime)


