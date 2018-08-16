Rails.application.routes.draw do

  root 'homes#new'

  resources :homes
  resources :mails

end
