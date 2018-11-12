class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :check_permission , only: [:update]

  def update

    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to edit_user_path(@profile.user_id), notice: 'Proile was successfully updated.' }
        format.json { render :show, status: :ok, location: redirect_back(fallback_location: root_path) }
      else
        format.html { redirect_to edit_user_path(@profile.user_id), notice: 'Proile was successfully updated.' }
        format.json { render :show, status: :ok, location: redirect_back(fallback_location: root_path) }
      end
    end
    

  end

  private 
  def profile_params
    params.require(:profile).permit(
      :user_id,
      :disp_name,
      :birth,
      :biography,
      :image
    )
  end

  def check_permission
    @profile = Profile.find(params[:id])
    return if @profile.user_id == current_user.id
  end

end
