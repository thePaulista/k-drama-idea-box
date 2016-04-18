Rails.application.routes.draw do
  root to: "ideas#index"

  resources :ideas
  resources :categories
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get "signup" => "users#new"

  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  delete '/logout' => "sessions#destroy"
end
