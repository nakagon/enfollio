class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find_by(id: params[:user_id])
    respond_to do |format|
      if current_user.follow(@user)
        format.html { redirect_to @user, notice: 'successfully' }
        format.json { render json:{status: "success"}}
      else
        format.html { redirect_to @user, notice: 'error' }
        format.json { render json:{status: "error"}}
      end
    end
  end

  def destroy
    @user = User.find_by(id: params[:user_id])
    respond_to do |format|
      if current_user.unfollow(@user)
        format.html { redirect_to @user, notice: 'successfully' }
        format.json { render json:{status: "success"}}
      else
        format.html { redirect_to @user, notice: 'error' }
        format.json { render json:{status: "error"}}
      end
    end
  end

end
