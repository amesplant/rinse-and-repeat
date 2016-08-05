def current_user
 @current_user ||= User.find_by(id: session[:user_id])
end

def logged_in?
  session[:user_id] != nil
end

def authenticate!
  # @error = "Hey suds for brains, try again!!!"

  redirect '/sessions/login' unless logged_in?
end

# def authorized?
#   current_user.id == @entry.user_id
# end
