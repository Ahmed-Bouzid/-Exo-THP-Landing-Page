Rails.application.routes.draw do

  get 'mail/new'
  get 'mail/create'
  get 'mail/show'
  root 'home#index'

  resources :home

end
