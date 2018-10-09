Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      match "*all" => "application#cors_preflight_check", :constraints => { :method => "OPTIONS" }
      resources :skate_spots, only: [:index, :create, :show, :destroy]
      resources :users, only: [:index, :show, :create, :destroy]
      resources :likes, only: [:index, :create, :show, :destroy]
      resources :bookmarks, only: [:index, :create, :show, :destroy]
      # get '/events/:id', to: 'events#show'
    end
  end
end
