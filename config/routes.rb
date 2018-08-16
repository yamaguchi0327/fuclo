Rails.application.routes.draw do
	get 'cloths/send_img'
	get 'cloths/fav'
	get 'cloths/cal'
	get 'cloths/reg' => "cloths#reg"
	get 'cloths/det' => "cloths#det"
	get 'cloths/cor'
	get 'cloths/cor_reg' => "cloths#cor_reg"
	resources :cloths
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
