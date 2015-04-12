Rails.application.routes.draw do
    devise_for :models

    devise_for :users
    resources :movies do
        resources :reviews, except: [:show,:index]
    end

    root to: "movies#index"
end
