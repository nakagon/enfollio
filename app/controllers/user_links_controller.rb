class UserLinksController < ApplicationController
  before_action :authenticate_user!

  def create
    user_links_param[:user_links_attributes].keys.each do |id|
      param = user_links_param[:user_links_attributes][id]
      if param.has_key?(:_destroy)
        current_user.user_links.find_by(id:param[:id]).destroy
      else
        link = current_user.user_links.find_or_initialize_by( id: param[:id]).tap do |s|
          s.type = param[:type]
          s.link_url = param[:link_url]
        end
        link.save
      end
    end
    redirect_back(fallback_location: root_path)
  end

  def check_permission
    @user_links = UserLink.find(params[:id])
    return if @user_links.user_id == current_user.id
  end

  private 
  def user_links_param
    params.require(:user).permit(
      :user_id,
      user_links_attributes: [:id, :type, :link_url, :_destroy],
    )
  end
end
