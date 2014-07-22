Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :posts, only: [:index, :show, :update] do
    resources :spams, only: [:create]
  end
  root to: "regions#index"
  resources :categories, only: [:show] do
    resources :posts, only: [:new, :create]
  end
  resources :regions, only: [:create, :show] do
    resources :categories, only: [:create]
  end
  resources :categories, only: [:show]
  resource :dashboard, only: [:show]
end
