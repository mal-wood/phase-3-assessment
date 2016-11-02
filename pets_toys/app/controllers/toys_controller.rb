class ToysController < ApplicationController

	def index 
		@pet = Pet.find(params[:pet_id])
		@toys = @pet.toys
		render json: {message: @toys}
	end 

  
end
