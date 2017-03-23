class FavoursController < ApplicationController
def new
    @favour = Favour.new
end

def create
   # @juan = Juan.new(params[:juan_params])
    @favour = Favour.new()
	@favour.description = params[:juan][:description]
	@favour.skill_id = params[:juan][:skill_id]
	@favour.time_availfrom = Time.now
	@favour.time_availto = params[:juan][:time_availto]
	
	if @favour.save
		redirect_to "/juans"
	else
		render "/juans/new"
	end
end
end
