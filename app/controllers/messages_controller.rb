class MessagesController < ApplicationController
  def index
    if !current_user
      flash.alert = "ログインしてください。"
      redirect_to login_path
    end
    @messages = Message.order(created_at: :desc)
  end

  def new
    if !current_user
      flash.alert = "ログインしてください。"
      redirect_to login_path
    end
    @message = Message.new
  end

  def create
    @message = Message.new
    @message.content = params[:message][:content]
    if @message.save
      redirect_to messages_path
    else
      render action: "new"
    end
  end
end
