Rails.application.routes.draw do
	get 'cloths/send_img'
	resources :cloths
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
