class MicropostsController < ApplicationController
  before_action :signed_in_user
  before_action :correct_user,   only: :destroy

  def create
    @micropost = current_user.microposts.build(micropost_params)
    @micropost.item_have = false
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    redirect_to root_url
  end

  def update
    micropost = Micropost.find(params[:id])
    micropost.item_have = !micropost.item_have
    micropost.save
    redirect_to root_url
  end

  private

    def micropost_params
      params.require(:micropost).permit(:id,:content,:item_image,:item_name,:item_have)
    end
    
    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end