get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params)
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = @user.errors
    erb :'users/new'
  end
end

get '/users/:id' do
  authenticate!
  @user = current_user
  if @user
    @rounds = @user.rounds
    erb :'users/show'
  else
    redirect '/'
  end
end
