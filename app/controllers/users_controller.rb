class UsersController < ApplicationController

  def index
    @users = User
      .includes(:profile, :skills, :user_links)
  end

  def show
    @user = User.friendly.find(params[:id])
  end

  def edit
    current_user.skills.build unless current_user.skills.present?
    current_user.user_links.build unless current_user.user_links.present?
    current_user.works.build unless current_user.works.present?
  end

end
