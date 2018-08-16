Rails.application.routes.draw do

  root 'home2#index'
  get "/home", to: 'homes#new' 
  resources :homes
  resources :mails

end
