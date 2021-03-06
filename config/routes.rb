Rails.application.routes.draw do
 
  post ':username/follow_account', to: 'relationships#follow_account', as: :follow_account
  post ':username/unfollow_account', to: 'relationships#unfollow_account', as: :unfollow_account

  resources :follows
  resources :likes
 
  root 'sessions#new'
resources :sessions, only: [:new, :create, :destroy]
  resources :posts 
  resources :accounts,  only: [:index, :create, :new, :edit ]
  get 'signup', to: 'accounts#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get '/:username', to: 'accounts#show', as: :profile
  get '/visit/:username', to: 'accounts#visit', as: 'visit'
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


