# on homepage, redirect to show all available decks
get '/' do
  @decks = Deck.all
  @user = current_user
  erb :'/decks/index'
end
