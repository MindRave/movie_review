Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  resources :movies
  root to: "movies#index"
end
