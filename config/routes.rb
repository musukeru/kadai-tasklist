Rails.application.routes.draw do

  get 'tasks/create'

  get 'tasks/destroy'

  get 'users/edit'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root to: 'tasks#index'
 
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'

  resources :tasks
  resources :users
end