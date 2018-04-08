Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :homes, only: [:show]
  resources :search, only: [:index]
  resource :mate_preference, only: [:update]

  root to: "homes#show"
  
  resources :conversations do
    resources :messages
   end

  resources :dashboard 
  
  
  resources :users
  get 'user/:id/pool', to: 'pool#index' , as: "user_pool"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
