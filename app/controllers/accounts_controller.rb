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
    @user.save!
    redirect_to account_path
  end
end
