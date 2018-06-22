Rails.application.routes.draw do

  
  devise_for :users
  
  root 'dinos#index'
  resources :dinonames, only: [:index, :create]
  resources :dinos, only: [:create]
  resources :dinos do
    member do
      put "like", to: "dinos#upvote"
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
