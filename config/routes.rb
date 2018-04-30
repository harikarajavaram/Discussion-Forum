Rails.application.routes.draw do
  resources :posts
  resources :devops
  devise_for :users
	resources :posts do
		resources :comments
	end

	root 'posts#index'
end
