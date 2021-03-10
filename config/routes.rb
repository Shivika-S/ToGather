Rails.application.routes.draw do
  devise_for :users
  resources :activities, only: [:index]
  resources :categories, only: [:index] do
    resources :activities, only: [:show, :new, :create]
  end

  resource :dashboard, only: [:show]
  get "dashboard", to: "dashboards#show"

  root to: 'pages#home'

end
