class ApplicationController < ActionController::Base
  helper_method :logged_in?
  private

  def logged_in?
    !!session[:member_id]
end

  def current_user
    @member = Member.find(session[:member_id])
  end

  def require_login
    if !logged_in?
      flash[:message] = "You must be logged in to view this page."
      redirect_to login_path
    end
  end

end
