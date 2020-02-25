class FavorsController < ApplicationController
  def create
    favor = Favor.create(
      user: current_user,
      message: Message.find(params[:message_id])
    )
    redirect_back fallback_location: messages_path
  end

  def destroy
    favor = Favor.find_by(
      user: current_user,
      message: Message.find(params[:message_id])
    )
    favor.destroy
    redirect_back fallback_location: messages_path
  end
end
