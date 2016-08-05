# test to see if the user has a session cookie for a user_id
def logged_in?
  session[:user_id] != nil
end
