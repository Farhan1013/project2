Rails.application.routes.draw do
	
  root 'home#index'

  get 'post/index' => 'post#index', as: :post

  get 'post/chatter' => 'post#chatter', as: :chatter

  post 'post/chatter_post' => 'post#chatter_post', as: :chatter_post

  get 'post/chitter' => 'post#chitter', as: :chitter

  post 'post/new_comment' => 'post#new_comment', as: :new_comment

end
