Rails.application.routes.draw do
  root to: "ideas#index"

  resources :ideas
  resources :users

  get "signup" => "users#new"
end
