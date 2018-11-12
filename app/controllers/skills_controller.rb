class SkillsController < ApplicationController
  before_action :authenticate_user!

  def create    
    skill_params[:skills_attributes].keys.each do |id|
      param = skill_params[:skills_attributes][id]
      if param.has_key?(:_destroy)
        current_user.skills.find_by(id:param[:id]).destroy
      else
        skill = current_user.skills.find_or_initialize_by( id: param[:id]).tap do |s|
          s.skill_master_id = param[:skill_master_id]
          s.age = param[:age]
          s.level = param[:level]
        end
        skill.save
      end
    end
    redirect_back(fallback_location: root_path)
  end

  private 
  def skill_params
    params.require(:user).permit(
      :user_id,
      skills_attributes: [:id, :skill_master_id, :age, :level, :_destroy],
    )
  end
end
