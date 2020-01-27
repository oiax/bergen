class UsersController < ApplicationController
  def index
    # 現在ログインしているユーザ（自分自身）以外を表示する
    @users = User.where.not(id: current_user.id)
  end

  def show
    @user = User.find(params[:id])
  end
end
