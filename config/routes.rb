Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :skate_spots, only: [:index, :create, :show, :destroy]
      resources :users, only: [:index, :show, :create, :destroy, :profile]
      resources :likes, only: [:index, :create, :show, :destroy]
      resources :bookmarks, only: [:index, :create, :show, :destroy]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      # get '/events/:id', to: 'events#show'
    end
  end
end
