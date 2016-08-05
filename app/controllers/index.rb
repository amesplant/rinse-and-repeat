# on homepage, redirect to show all available decks
get '/' do
  @decks = Deck.all
  erb :'/decks/index'
end
