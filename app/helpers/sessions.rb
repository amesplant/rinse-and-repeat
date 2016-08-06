# test to see if the user has a session cookie for a user_id
def logged_in?
  session[:user_id] != nil
end

def current_user
  @_cached_user ||= User.find(session[:user_id]) if logged_in?
end

def redirect_unless_logged_in(redirect_path)
  redirect redirect_path unless logged_in?
end
