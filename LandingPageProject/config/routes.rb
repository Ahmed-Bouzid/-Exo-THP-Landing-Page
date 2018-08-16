Rails.application.routes.draw do

  root 'homes#new'
  get "/landingpage2", to: 'home2#new' 

  resources :homes
  resources :mails

end
