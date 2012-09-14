Beers::Application.routes.draw do
  
  get "home/index"
  resources :home, :beers
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  root :to => 'home#index'
end
