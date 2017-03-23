class RunnersController < ApplicationController
def new
    @runner = Runner.new
end

def create
   # @juan = Juan.new(params[:juan_params])
    @runner = Runner.new()
	@runner.fname = params[:runner][:fname]
	@runner.lname = params[:runner][:lname]
	@runner.skill = params[:runner][:skill]
	@runner.username = params[:runner][:username]
	@runner.password = params[:runner][:password]
	@runner.save
	redirect_to "/runners"
end

#def juan_params
 #params.require(:juan).permit(:fname, :lname, :address, :username, :password)
 #end

#def show
 #   @runners = Runner.find(params[:id])
#end

def index

    @runners = Runner.all
end

def delete
	@runner = Runner.find(params[:id])
	@runner.destroy
	redirect_to "/runners"
end
end
