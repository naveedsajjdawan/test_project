Rails.application.routes.draw do
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  
  resources :articles

  get 'signup', to: "users#new"
  
  resources :users, except: [:new]
  
  get 'login', to:'session#new'
  
  post 'login', to:'session#create'
  
  get 'logout', to: 'session#destroy'
  
  resources :categories, except: [:destroy]
end
