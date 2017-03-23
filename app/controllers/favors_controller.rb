class FavorsController < ApplicationController
	def new
    	@favor = Favor.new
    	@juans = Juan.find(session[:id])
	end

def create
   # @juan = Juan.new(params[:juan_params])
    @favor = Favor.new()
	@favor.desc = params[:favor][:desc]
	@favor.skill = params[:favor][:skill]
	@favor.juan_id = Juan.find(session[:id]).id
	
	if @favor.save
		redirect_to "/juans"
	else
		render "/favors/new"
	end
end

def edit
	@favor = Favor.find(params[:id])
end

def update
	@favor = Favor.find(params[:id])
	@favor.desc = params[:favor][:desc]
	@favor.skill = params[:favor][:skill]
	
	if @favor.save
		redirect_to "/juans"
	else
		render "/favors/new"
	end
end

def index
	@favor = Favor.all
end

def delete
	@favor = Favor.find(params[:id])
	@favor.destroy
	redirect_to "/juans"
end
end
