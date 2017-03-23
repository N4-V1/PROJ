class RunnersController < ApplicationController
	def new
    @runner = Runner.new
end

def create
   # @juan = Juan.new(params[:juan_params])
    @runner = Runner.new()
	@runner.fname = params[:runner][:fname]
	@runner.lname = params[:runner][:lname]
	@runner.address = params[:runner][:address]
	@runner.username = params[:runner][:username]
	@runner.password = params[:runner][:password]
	@runner.contact = params[:runner][:contact]
	@runner.skill = params[:runner][:skill]
	
	if @runner.save
		redirect_to "/runners"
	else
		render "/runners/new"
	end
end

#def juan_params
 #params.require(:juan).permit(:fname, :lname, :address, :username, :password)
 #end

def show
   @runners = Runner.find(params[:id])
end

def index
    @runners = Runner.find(session[:id])
end

def edit
	@runner = Runner.find(session[:id])
end

def update
	@runner = Runner.find(session[:id])
	#@juan.update_attributes(params[:juan])
	@runner.fname = params[:runner][:fname]
	@runner.lname = params[:runner][:lname]
	@runner.address = params[:runner][:address]
	@runner.contact = params[:runner][:contact]
	@runner.skill = params[:runner][:skill]
	@runner.isAvailable = params[:runner][:isAvailable]
	
	if @runner.save
		redirect_to "/runners"
	else
		render "/runners/new"
	end
	#redirect_to "/juans/#{@juan.id}"
end

def delete
	@runner = Runner.find(params[:id])
	@runner.destroy
	redirect_to "/login"
end

def accept
	@favor = Favor.find(params[:id])
	@runner = Runner.find(session[:id])

	@favor.runner_id = @runner.id
end

end
