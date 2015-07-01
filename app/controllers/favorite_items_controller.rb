class FavoriteItemsController < ApplicationController
  before_action :signed_in_user

  def create
    @favorite = Micropost.find(params[:favorite_item][:faved_id])
    current_user.favorite!(@favorite)
    respond_to do |format|
      format.html{ redirect_to root_path}
      format.js
    end
  end

  def destroy
    @favorite = FavoriteItem.find(params[:id]).faved_id
    current_user.unfavorite!(@favorite)
    respond_to do |format|
      format.html{ redirect_to root_path}
      format.js 
    end
  end
end