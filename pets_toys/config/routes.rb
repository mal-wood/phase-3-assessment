Rails.application.routes.draw do

	root "pets#index"

	get '/home', to: "pets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pets, except: [:create, :edit, :destroy, :update]  do 
  	resources :toys, except: [:create, :edit, :destroy, :update] 
  end 
end
