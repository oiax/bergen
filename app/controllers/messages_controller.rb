class MessagesController < ApplicationController
  def index
    # 自分と自分がフォローしているユーザ達のidをfollowing_iusers_idsに保存
    following_users_ids = current_user.followings.ids + [current_user.id]

    # following_users_idsを使って必要なメッセージのみを取り出して並び替え
    @messages = Message
      .includes(:user)
      .where(user_id: following_users_ids)
      .order(created_at: :desc)
      .page(params[:page]).per(5)
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(user_id: current_user.id)
    @message.content = params[:message][:content]
    if @message.save
      redirect_to messages_path
    else
      render action: "new"
    end
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy
    flash.notice = "メッセージを削除しました。"
    redirect_to messages_path
  end
end
