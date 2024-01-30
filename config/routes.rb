Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get 'home/about', as: 'about'

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    member do
      post 'edit', action: :update
    end
  end

  resources :users, only: [:show, :index, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
