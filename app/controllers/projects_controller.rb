class ProjectsController < ApplicationController
	def index
		@projects = if params[:search]
			Project.where("LOWER(name) LIKE LOWER(?)", "%#{params[:search]}")
		else
			@projects = Project.all
		end
		respond_to do |format|
			format.html
			format.js
		end
	end
	

def show
	@project = Project.find(params[:id])
end

def new
	@project = Project.new	

end

def create
	@project = Project.new(project_params)
	@project.user_id = current_user.id
	if @project.save

		redirect_to projects_url
	else
		render :new
	end 
end

def edit
	@project = current_user.owned_projects.find(params[:id])
end

def update
	@project = Project.find(params[:id])

	if @project.update_attributes(project_params)
		redirect_to "/projects/#{@project.id}"
	else
		render :edit
	end
end

def destroy
	Project.find(params[:id]).destroy
	redirect_to projects_url, :flash => { :success => "Project destroyed." }
end


private
def project_params
	params.require(:project).permit(:name, :description, :goal, :start_date, :end_date, rewards_attributes: [:id, :description, :amount, :_destroy], donations_attributes: [:reward_id, :amount, :_destroy])

end	

end