# display a specific card from a deck
get '/cards/:id' do
  @card = Card.find_by(id: params[:id])

  erb :'cards/show'
end

# here is where all of the information gets processed for each question
post '/cards/:id' do
  p session.inspect

  card = Card.find_by(id: params[:id])
  # was the user's guess the correct answer?
  guess = PossibleAnswer.find_by(id: params[:guess].to_i)
  # if the guess is the correct answer ...
  if guess == card.correct_answer
    feedback = "Nice clean up on your last answer. Try to clean this one up."
    # remove this card from cards_in_play
    session[:cards_in_play].slice!(0)
    # increment correct_first_guesses if first time viewing this card
    session[:correct_first_guesses] += 1 if session[:first_view?]
    # if there are no more cards to play
    if session[:cards_in_play].empty?
      # if user is registered and logged in ...
      if logged_in?
        redirect "/decks/#{card.deck_id}/rounds/#{round.id}"
      else
        redirect "/decks/#{card.deck_id}/rounds/guest"
      end
    end
  else
    # the guess was not the correct answer
    feedback = "That last answer was a dirty answer. Try to clean it up later."
  end
  # increment total guesses
  session[:total_guesses] += 1
  # add this card to cards already presented to the user
  session[:cards_presented] << card.id
  p session.inspect

  redirect "/cards/#{session[:cards_in_play].first}?feedback=#{feedback}"
end
