Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  # get "lists", to: "lists#index"
  # get "lists/:id", to: "lists#show", as: :list
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
end
