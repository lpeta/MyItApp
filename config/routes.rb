Rails.application.routes.draw do

  resources :tickets
  # root 'login#index'
  resources :login

  root 'login#new'

  #get 'login', to: :new
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get 'welcome#home'
  # about 

  get 'about', to: 'welcome#about'


end
