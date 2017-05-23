Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  namespace :admin do
    resources :products
  end

   resources :products do
    member do
      post :add_to_cart
    end
   end

  resources :carts

end
