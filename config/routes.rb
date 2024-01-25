Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :prototypes #, only: [:index, :new, :create, :show, :edit, :update, :destroy](resourcesは7つのアクションをまとめてルーティング設定できるので、7つのアクション全て記述したらonly以下は不要)

  resources :prototypes do
    resources :comments, only: :create
  end

  resources :users, only: :show
  
end
