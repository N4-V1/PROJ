class SessionsController < ApplicationController

	def index

	end
	
	def create
		@juan = Juan.find_by(username: params[:session][:username])
		@runner = Runner.find_by(username: params[:session][:username])
		if @juan && @juan.password == params[:session][:password]
			redirect_to "/juans"
		elsif @runner && @runner.password == params[:session][:password]
			redirect_to "/runners"
		else
			flash[:alert] = "Invalid login credentials."
			redirect_to "/index"
		end
	end
	
end
