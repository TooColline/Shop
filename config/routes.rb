Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :products
  namespace :api do
    
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
