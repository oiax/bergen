class FavorsController < ApplicationController
  def create
    favor = Favor.create(
      user: current_user,
      message: Message.find(params[:message_id])
    )
    redirect_back fallback_location: messages_path
  end

  def destroy
  end
end
