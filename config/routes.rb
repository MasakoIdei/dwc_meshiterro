Rails.application.routes.draw do

 devise_for :users
 root 'homes#top'
 resources :post_images, only: [:new, :create, :index, :show, :destroy] do

  # いいね機能
  resource :favorites, only: [:create, :destroy]
  
  # コメントの作成、削除
  resources :post_comments, only: [:create, :destroy]
 end
　# マイページ
 resources :users, only: [:show]

end
