class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    current_user.like(params[:micropost_id])
    flash[:success] = 'いいねしました。'
    redirect_to current_user
  end

  def destroy
    current_user.unlike(params[:micropost_id])
    flash[:success] = 'いいねを解除しました。'
    redirect_to current_user
  end
end