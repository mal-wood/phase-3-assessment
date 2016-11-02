class ToysController < ApplicationController

	def index 
		@pet = Pet.find(params[:pet_id])
		@toys = @pet.toys
		if request.xhr? 
			render partial: 'toy_list', locals: {pet: @pet, toys: @toys}
		else 
		render json: {message: @toys}
		end
	end 

end
