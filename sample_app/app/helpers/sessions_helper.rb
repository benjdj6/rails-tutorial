module SessionsHelper

  # logs in specified user
  def log_in(user)
    session[:user_id] = user.user_id
  end

  # returns the current logged-in user, if any
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

end
