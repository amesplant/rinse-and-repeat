get '/login' do
  erb :'sessions/login'
end

post '/login' do
  if @user = User.find_by(username: params[:username])
    if @user.authenticate(@user.email, params[:password])
      session[:user_id] = @user.id
      @user = User.find(session[:user_id])
      erb :'/users/show'
    else
      @error = "Hey suds for brains, try again!!!"
      erb :'/sessions/login'
    end
  else
    erb :'/sessions/login'
  end
end

get 'logout' do
  session.delete(:user_id)
  redirect '/'
end
