Rails.application.routes.draw do
  resources :lists do
    resources :list_items, except: [:index, :show]
  end

  devise_for :users
  get "home/index"
  get "about" => "home#about"

  root to: "home#index"
end
