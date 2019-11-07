class ApplicationController < ActionController::Base
  before_action :authorize
  
  private def current_user
    if session[:user_id]
      @current_user ||=
        User.find(session[:user_id])
    end
  end
  helper_method :current_user

  def authorize
    if !current_user
      flash.alert = "ログインしてください。"
      redirect_to login_path
    end
  end
end
