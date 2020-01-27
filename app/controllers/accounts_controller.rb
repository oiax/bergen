class AccountsController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.name = params[:user][:name]
    @user.full_name = params[:user][:full_name]
    @user.bio = params[:user][:bio]
    @user.new_profile_picture = params[:user][:new_profile_picture]
    if @user.save
      flash.notice = "アカウント情報を更新しました。"
      redirect_to account_path
    else
      flash.now.alert = "アカウント情報の更新に失敗しました。"
      render action: "edit"
    end
  end
end
