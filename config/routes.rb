Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :messages, only: [:create]
  resources :room, onle: [:create, :index, :show]
  mount ActionCable.server => '/cable'
end
