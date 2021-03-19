Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/unacceptable'
  get 'errors/internal_error'
  devise_for :users

  resources :activities, only: [:index, :new, :create, :destroy, :edit, :update] do
    resource :bookmark, only: [:show, :create]
  end

  resources :categories, only: [:index] do
    resources :activities, only: [:show]
  end
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  resource :dashboard, only: [:show]

  resource :bookmark, only: [:destroy]

  get "dashboard", to: "dashboards#show"
  # get "bookmark", to: "dashboards#show"
  get "/activities/:id" => "activities#destroy"

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

  root to: 'pages#home'

end
