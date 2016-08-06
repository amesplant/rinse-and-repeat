
# display a specific card from a deck
get '/cards/:id' do
  card = Card.find_by(id: params[:id])
  p card.question
  p card.correct_answer_id
  p card.possible_answers
  erb :'cards/show'
end
