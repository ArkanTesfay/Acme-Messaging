Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#home"
  get "signup", to:"users#signup"



  resources :users, except:[:new]

   
end
