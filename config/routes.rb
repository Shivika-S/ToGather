Rails.application.routes.draw do
  devise_for :users
  resources :activities, only: [:index, :new, :create]
  resources :categories, only: [:index] do
    resources :activities, only: [:show]
  end
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  resource :dashboard, only: [:show]
  get "dashboard", to: "dashboards#show"

  root to: 'pages#home'

end
