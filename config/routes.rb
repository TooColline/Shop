Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :line_items
  resources :carts
  resources :products
  namespace :api do
    
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
