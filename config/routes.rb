Rails.application.routes.draw do

  
  root 'dinos#index'
  resources :dinonames, only: [:index, :create]
  resources :dinos, only: [:create]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
