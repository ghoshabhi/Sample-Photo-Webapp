class PhotosController < ApplicationController

  def index
    @photos = Photo.where(user_id: params[:id])
    @user = User.find(params[:id])
    if @user && @photos
      respond_to do |format|
        format.html
        format.json { render json: { data: { user: @user, photos: @photos }}}
      end
    end
  end
end

# if params.key?(:id)
#  @photos = Photo.where(user_id: params[:id])
#  @user = User.find(params[:id])
#  respond_to do |format|
#    format.html
#    format.json { render json: { data: { user: @user, photos: @photos }}}
#  end
#else
#  redirect_to 'users#index'
#end