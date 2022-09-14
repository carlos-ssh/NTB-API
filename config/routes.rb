Rails.application.routes.draw do
  get '/latest-posts', to: 'posts#latest_posts'
  
  # post '/create-message', to: 'contactmessages#create'

  resources :posts, only: [:index, :show, :latest_posts]
  resources :contactmessages, only: [:create]

  root "posts#index"
  # resources :articles, only: [:index, :show]
end
