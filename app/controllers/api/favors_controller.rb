class Api::FavorsController < ApplicationController
  # JavaScript側に「自分が良いね済みか？」と「良いね件数」の2つの情報を返す
  def count
    message = Message.find(params[:message_id])

    am_i_favoring = message.favored_by?(current_user)
    favors_count = message.favors.count

    render json: {
      am_i_favoring: am_i_favoring,
      favors_count: favors_count
    }
  end
end
