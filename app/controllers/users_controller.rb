class UsersController < ApplicationController
  def index
    @users = User.all.order('first_name ASC')
    @size = @users.size
    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find(params[:id])
    @user_photos = Photo.where(user_id: @user.id)
    @all_users = User.where.not(id: params[:id])
    respond_to do |format|
      format.html
      format.json { render json: { user: @user, user_photos: @user_photos } }
    end
  end
end
