Rails.application.routes.draw do

  get 'mail/new'
  get 'mail/create'
  get 'mail/show'
  #root 'home#index'
  root 'home2#index'

  resources :home

end
