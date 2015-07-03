CookbookApp2::Application.routes.draw do

  root to: 'users#index'
  resources :users
  resources :sessions

  #root to: 'categories#index'

  resources :categories
  resources :recipes
  resources :ingredients

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  post 'login' , to: 'sessions#create', as: 'new_session'

  match 'search', to: 'categories#search', via: [:get, :post], as: :search


end
  
  

  
