Beers::Application.routes.draw do
  
  get "home/index"
  resources :home, :beers
  
  resources :my_beers do
    collection do
      get :add      
    end    
  end
  
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  root :to => 'home#index'
end
