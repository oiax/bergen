class RelationshipsController < ApplicationController
  def create
    Relationship.create(
      following_id: current_user.id,
      follower_id: params[:id]
    )
    redirect_to users_path
  end

  def destroy
    Relationship.find_by(
      following_id: current_user.id,
      follower_id: params[:id]
    ).destroy
    redirect_to users_path
  end
end
