Rails.application.routes.draw do

  root 'dinos#index'
  resources :dinos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
