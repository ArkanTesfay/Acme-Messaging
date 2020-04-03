Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#home"
  get "signup", to:"users#signup"

  get "login", to: "session#new"
  post "login", to:"session#create"

  delete "logout", to: "session#destroy"

  get  'chatroom', to:"chatroom#index"
  post 'message', to:"messages#create"

  mount ActionCable.server, at: '/cable'


  resources :users, except:[:new]



end
