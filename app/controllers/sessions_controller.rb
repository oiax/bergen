class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user
      puts "ログイン成功！"
      redirect_to messages_path
    else
      puts "ログイン失敗！"
      render action: "new"
    end
  end

  def destroy
  end
end
