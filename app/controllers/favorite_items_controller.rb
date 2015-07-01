class FavoriteItemsController < ApplicationController
  before_action :signed_in_user

  def create
    @favorite = FavoriteItem.find(params[:favorite_items][:micropost])
    current_user.favorite!(@favorite)
    respond_to do |format|
      format.html{ redirect_to @user}
      format.js
    end
  end

  def destroy
    @favorite = FavoriteItem.find_by(params[:id])
    respond_to do |format|
      format.html{ redirect_to @user}
      format.js
    end
  end

end
