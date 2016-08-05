get '/' do
  @decks = Deck.all
  erb :'/decks/index'
end
