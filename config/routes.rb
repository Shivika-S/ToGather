Rails.application.routes.draw do
  devise_for :users
  resources :activities, only: [:index]
  resources :categories, only: [:index] do
    resources :activities, only: [:show, :new, :create]
  end

  resource :dashboard, only: [:show]
  resource :bookmark, only: [:create, :destroy]

  get "dashboard", to: "dashboards#show"
  get "bookmark", to: "dashboards#show"

  root to: 'pages#home'

end
