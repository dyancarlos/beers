Beers::Application.routes.draw do
  
  get "home/index"
  resources :beers
  
  resources :home do
    collection do
      get :login
    end
  end
  
  resources :my_beers do
    collection do
      get :add      
    end    
  end
  
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/home/index')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  root :to => 'home#login'
end
