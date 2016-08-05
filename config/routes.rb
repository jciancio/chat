Rails.application.routes.draw do
  resources :chatrooms do
    resource :chatroom_users
  end

  devise_for :users

  root 'chatrooms#index'
end
