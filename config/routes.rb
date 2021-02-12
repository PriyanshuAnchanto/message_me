Rails.application.routes.draw do
  root 'chatroom#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'message', to: 'messages#new'
  post 'message', to: 'messages#create'

  mount ActionCable.server , at: '/cable'
end
