class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user && BCrypt::Password.new(user.hashed_password) == params[:password]
      session[:user_id] = user.id
      flash.notice = "ログインしました。"
      redirect_to messages_path
    else
      flash.now.alert = "ユーザ名またはパスワードが正しくありません。"
      render action: "new"
    end
  end

  def destroy
    session.delete(:user_id)
    flash.notice = "ログアウトしました。"
    redirect_to root_path
  end
end
