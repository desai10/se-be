Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :messages, only: [:create]
  resources :room, only: [:create, :index, :show, :update]
  resources :user, only: [:create]
  mount ActionCable.server => '/cable'
end
