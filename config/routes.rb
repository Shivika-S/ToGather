Rails.application.routes.draw do
  devise_for :users

  resources :activities, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :categories, only: [:index] do
    resources :activities, only: [:show]
  end
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  resource :dashboard, only: [:show]
  resource :bookmark, only: [:create, :destroy]

  get "dashboard", to: "dashboards#show"
  get "bookmark", to: "dashboards#show"
  get "/activities/:id" => "activities#destroy"

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

  root to: 'pages#home'

end
