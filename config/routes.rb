Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [] do
    resources :chats, only: [:index, :show, :create]
  end
  resources :messages, only:[:create]
  get 'users/profile', to: 'users#profile', as: 'user_root'
  get 'users/all', to: 'users#index', as: 'users_index'
  get 'users/calls', to: 'calls#root', as: 'calls_root'
  post 'users/calls', to: 'calls#create'
  root to: "home#index"
  resources :calls, only: :create
  mount ActionCable.server, at: '/cable'
end