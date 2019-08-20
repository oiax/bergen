class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user
      flash.notice = "ログインしました。"
      redirect_to messages_path
    else
      flash.now.alert = "ユーザ名またはパスワードが正しくありません。"
      render action: "new"
    end
  end

  def destroy
  end
end
