Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get '/invites', to: 'invites#show'
  root to: "homes#show"

  resources :sessions, only: [:create, :destroy]
  resource :homes, only: [:show]
  resources :search, only: [:index]
  resource :mate_preference, only: [:update]
  resource :trait, only: [:update]

  resources :conversations do
    resources :messages
   end

   resources :daters do 
    resources :images
  end
  resources :dashboard

  resources :backers do
    resources :daters do
          resources :comments,  as: 'comments'
          resources :personalities
    end
  end

  resources :users
  post 'search', to: 'search#create' , as: "search"

  get 'user/:id/pool', to: 'pool#index' , as: "user_pool"
  put 'user/:id/pool', to: 'pool#update' , as: "edit_user_pool"


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
end
