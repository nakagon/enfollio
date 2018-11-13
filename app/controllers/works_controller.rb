class WorksController < ApplicationController
  def create
    work_params[:works_attributes].keys.each do |id|
      param = work_params[:works_attributes][id]
      if param.has_key?(:_destroy)
        current_user.works.find_by(id:param[:id]).destroy
      else
        work = current_user.works.find_or_initialize_by( id: param[:id]).tap do |s|
          s.title = param[:title]
          s.description = param[:description]
          s.url = param[:url]
          s.image = param[:image]
          s.source_url = param[:source_url]
          s.image = param[:image]
        end
        p work
        work.save
      end
    end
    redirect_back(fallback_location: root_path)
  end

  private 
  def work_params
    params.require(:user).permit(
      :user_id,
      works_attributes: [:id, :title, :description, :url, :source_url, :image, :_destroy],
    )
  end

end
