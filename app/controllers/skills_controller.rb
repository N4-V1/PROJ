class SkillsController < ApplicationController
def new
    @skill = Skill.new
end

def create
   # @juan = Juan.new(params[:juan_params])
    @skill = Skill.new()
	@skill.name = params[:skill][:name]

	if @skill.save
		redirect_to "/skills"
	else
		render "/skills/new"
	end
end

#def juan_params
 #params.require(:juan).permit(:fname, :lname, :address, :username, :password)
 #end

def show
   @skills = Skill.find(params[:id])
end

def index
    @skills = Skill.all
end

def delete
	@skill = Skill.find(params[:id])
	@skill.destroy
	redirect_to "/skills"
end
end
