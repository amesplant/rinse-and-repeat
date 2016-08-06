get '/decks/:id' do
  deck = Deck.find(params[:id])
  cards = deck.cards.map do |card|
    card.id
  end
  cards.shuffle!
  session[:correct_first_guesses] = 0
  session[:total_guesses] = 0
  session[:cards_presented] = Set.new []
  session[:cards_in_play] = cards

  redirect "cards/#{cards.first}"
end
