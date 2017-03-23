class JuansController < ApplicationController
	def new
    @juan = Juan.new
end

def create
   # @juan = Juan.new(params[:juan_params])
    @juan = Juan.new()
	@juan.fname = params[:juan][:fname]
	@juan.lname = params[:juan][:lname]
	@juan.address = params[:juan][:address]
	@juan.username = params[:juan][:username]
	@juan.password = params[:juan][:password]
	@juan.contact = params[:juan][:contact]

	if @juan.save
		redirect_to "/juans"
	else
		render "/juans/new"
	end
end

#def juan_params
 #params.require(:juan).permit(:fname, :lname, :address, :username, :password)
 #end

def show
   @juans = Juan.find(params[:id])
end

def index
    @juans = Juan.find(session[:id])
end

def edit
	@juan = Juan.find(session[:id])
end

def update
	@juan = Juan.find(session[:id])
	#@juan.update_attributes(params[:juan])
	@juan.fname = params[:juan][:fname]
	@juan.lname = params[:juan][:lname]
	@juan.address = params[:juan][:address]
	@juan.contact = params[:juan][:contact]
	
	if @juan.save
		redirect_to "/juans"
	else
		render "/juans/new"
	end
	#redirect_to "/juans/#{@juan.id}"
end

def delete
	@juan = Juan.find(params[:id])
	@juan.destroy
	redirect_to "/login"
end
end
