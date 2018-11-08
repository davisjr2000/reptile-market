Rails.application.routes.draw do
  get 'reptiles/index'
  get 'reptiles/show'
  get 'reptiles/new'
  get 'reptiles/create'
  get 'reptiles/edit'
  get 'reptiles/update'
  get 'reptiles/destroy'
  get 'users/show'
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :reptiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
