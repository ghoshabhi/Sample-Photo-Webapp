class PhotosController < ApplicationController

  def index
    @photos = Photo.where(user_id: params[:id])
    @user = User.find(params[:id])
    if @user && @photos
      respond_to do |format|
        format.html
        format.json { render json: { data: { user: @user, photos: @photos } } }
      end
    end
  end

  def fetch_comments_on_photos
    @comments = Comment.includes(:user).where(photo_id: params[:photoId])
    respond_to do |format|
      format.json { render json: { size: @comments.size, comments: @comments.as_json(include: { user: @user }) } }
    end
  end
end
