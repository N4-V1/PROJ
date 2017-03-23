class FavorsController < ApplicationController
	def new
    	@favor = Favor.new
    	@juans = Juan.find(session[:id])
	end

def create
   # @juan = Juan.new(params[:juan_params])
    @favor = Favor.new()
	@favor.desc = params[:favor][:desc]
	@favor.skill_id = params[:favor][:skill]
	@favor.juan_id = Juan.find(session[:id]).id
	
	if @favor.save
		redirect_to "/juans"
	else
		render "/favors/new"
	end
end

def update
	@favor = Favor.find(params[:id])
	@favor.update_attributes(params[:favor])
	redirect_to "/juans/#{@juan.id}"
end

end
