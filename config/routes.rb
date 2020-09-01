Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  
  resources :users do
    resources :favorites
    member do
          get :following, :followers
    end
  end
  
  resources :relationships, only: [:create, :destroy]
  
  resources :articles do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end
