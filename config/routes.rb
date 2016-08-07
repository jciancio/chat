Rails.application.routes.draw do
  resources :tasks

  resources :friendships

  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end

  devise_for :users
  get '/users' => 'users#index'
  get '/user/:username' => 'users#show'

  root 'chatrooms#index'
end
