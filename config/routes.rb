Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  
  resources :users do
    member do
       get :following, :followers
    end
    resources :favorites
  end
  
  resources :relationships, only: [:create, :destroy]
  
  resources :articles do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  get 'tags/:tag', to: 'articles#index', as: :tag
  
  post '/home/guest_sign_in', to: 'home#new_guest'
end
