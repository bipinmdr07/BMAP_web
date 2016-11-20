module SessionsHelper

  # Logs in the current user
  def log_in(user)
    session[:user_id] = user.id
  end

  # returns the current logged-in users if any else create a new on_worker_one
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # checking if user is logged in or not
  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
