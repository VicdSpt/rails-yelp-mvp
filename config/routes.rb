Rails.application.routes.draw do
    resources :restaurants, only: [:index, :show, :new, :create, :edit] do
      resources :reviews, only: [:new, :create]
    end
end
