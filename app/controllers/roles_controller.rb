class RolesController < ApplicationController
  
def index
  	@roles = Role.all
end

def new
	@role = Role.new
end

def edit
	@role = Role.find(params[:id])
end

def show
	@role = Role.find(params[:id])
end

def create
	@role = Role.new(params[:role])
	if @role.save
		redirect_to @role
	else
		render :edit
	end
end

def update
	@role = Role.find(params[:id])
	if @role.update_attributes(params[:role])
		redirect_to @role
	else
		render :edit
	end
end

def destroy
	@role = Role.find(params[:id])
	if @role.destroy
		redirect_to roles_path
	else
		flash[:error] = "Error deleting role"
		redirect_to @role
	end

end
end