Rails.application.routes.draw do
  root 'sessions#new'
  resources :posts 
  resources :accounts,  only: [:index, :create, :new, :edit ]
  resources :sessions, only: [:new, :create, :destroy]


  get '/:username', to: 'accounts#show', as: :profile

  get 'signup', to: 'accounts#new', as: 'signup'

  get 'logout', to: 'sessions#destroy', as: 'logout'

  get '/visit/:username', to: 'accounts#visit', as: 'visit'

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
