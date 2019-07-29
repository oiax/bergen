class MessagesController < ApplicationController
  def index
    @messages = Message.order(created_at: :desc)
  end

  def new
    @message = Message.new
  end
end
