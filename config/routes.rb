Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  namespace :admin do
    resources :products do
      member do
        post :reorder
      end
    end

    # 一级分类 #
    resources :category_groups do
      member do
        post :publish
        post :hide
      end
    end
    # 二级分类 #
    resources :categories do
       member do
         post :publish
         post :hide
       end
     end

  end

  resources :products do
    resources :reviews
    # 搜索 #
    collection do
      get :search
    end
    member do
      post :add_to_cart
      post :operations
    end
  end

  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :cart_items

  resources :orders do
    member do
      post :pay_with_alipay
      post :pay_with_wechat
    end
  end

  namespace :account do
    resources :orders
  end

end
