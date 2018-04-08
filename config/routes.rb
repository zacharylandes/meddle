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

  namespace :api do
    namespace :v1 do

      resources :users, only: [:index, :show]

      resources :daters, only: [:index, :show]
      namespace :daters do
        get "/:id/backers", to: "backers#index"
        get "/:id/backers/:backer_id", to: "backers#create"
        # post "/meals/:meal_id/foods/:id", to: "meals#create", as: :meal_foods
      end

      resources :backers, only: [:index, :show]
      namespace :backers do
        get "/:id/daters", to: "daters#index"
      end

    end
  end

  # get '/api/v1/daters/:id/backers', to: '/api/v1/daters/backers#index'
  # For details on the DSL available within this file, see http://guides.rubyonraiils.org/routing.html
end
