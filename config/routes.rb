Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users

  resources :users, only: %i[index show] do
    resources :friendships, only: %i[create update index destroy]
  end

  resources :posts, only: %i[index create] do
    resources :comments, only: [:create]
    resources :likes, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
