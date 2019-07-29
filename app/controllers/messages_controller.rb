class MessagesController < ApplicationController
  def index
    @messages = Message.order(created_at: :desc)
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new
    @message.content = params[:message][:content]
    @message.save
    redirect_to messages_path
  end
end
