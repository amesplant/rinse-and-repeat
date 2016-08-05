# direct to login form
get '/sessions/login' do
  erb :'sessions/login'
end

# receive params from login form
post '/sessions/login' do
  @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/'
    else
      @error = "Hey suds for brains, try again!!!"
      erb :'/sessions/login'
    end
  # end
end

# logout
get '/sessions/logout' do
  session.delete(:user_id)
  redirect '/'
end
