Rails.application.routes.draw do
  # 用户中心 #
  devise_for :users

  # 首页 #
  root 'welcome#index'

  # 管理员后台管理 #
  namespace :admin do
    # 课程管理 #
    resources :products do
      # 后台课程排序 #
      member do
        post :reorder
      end
    end
    # 订单管理 #
    resources :orders

    # 一级分类 #
    resources :category_groups do
      # 类型的公开和隐藏 #
      member do
        post :publish
        post :hide
      end
    end
    # 二级分类 #
    resources :categories do
      # 分类的公开和隐藏 #
      member do
        post :publish
        post :hide
      end
    end
  end

  # 前台课程 #
  resources :products do
    # 课程评论 #
    resources :reviews
    # 课程搜索 #
    collection do
      get :search
    end
    member do
      # 添加到购物车 #
      post :add_to_cart
      # 课程点赞 #
      put 'like', to: 'products#upvote'
      # 收藏课程 #
      post :add_to_favorite
      # 取消收藏的课程 #
      post :quit_to_favorite
    end
  end

  # 购物车 #
  resources :carts do
    # 购物车清空 + 结账 #
    collection do
      delete :clean
      post :checkout
    end
  end

  # 课程
  resources :cart_items

  # 订单操作 #
  resources :orders do
    # 使用支付宝／微信支付订单 #
    member do
      post :pay_with_alipay
      post :pay_with_wechat
    end
  end

  # 使用者专区 #
  namespace :account do
    # 订单记录 #
    resources :orders
    resources :products do
      # 取消收藏的课程 #
      post :quit_to_favorite
    end
  end
end
