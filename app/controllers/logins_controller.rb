class LoginsController < ApplicationController

	def create
		@juan = Juan.find_by(username: params[:login][:username])
		@runner = Runner.find_by(username: params[:login][:username])

		if @juan && @juan.password == params[:login][:password]
			session[:id] = @juan.id
			redirect_to "/juans"
		elsif @runner && @runner.password == params[:login][:password]
			session[:id] = @runner.id
			redirect_to "/runners"
		else
			flash[:alert] = "Invalid login credentials."
			redirect_to "/login"
		end
	end
end
