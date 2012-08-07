Osid3::Application.routes.draw do


  resources :weaknesses
  resources :searches
  resources :attacks
  resources :events
  resources :svsectors
  resources :pvsectors
  resources :blogposts
  resources :attackers
  resources :targets
  resources :countries

  get "pages/privacy"
  get "pages/index"
  get "pages/home"
  get "pages/contact"
  
  resources :sessions,   :only => [:new, :create, :destroy]
  resources :users
  resources :sources
  resources :additions
  resources :incidents  

  match '/feed' => 'blogposts#feed', :as => :feed, :defaults => { :format => 'atom' }

  match '/contact' => 'pages#contact'
  match '/about'  => 'pages#about'
  match '/help'  => 'pages#help'
  match '/signup' => 'users#new'
  match '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy'
  match '/news' => 'pages#news'
  match '/privacy' => 'pages#privacy'
  match '/contribute' => 'pages#contribute'
  match '/search' => 'pages#search'
  match '/admin' => 'pages#admin'

  #root :to => "incidents#index"
  root :to => "pages#home"

  match '/' => 'pages#home'
  match '/home' => 'pages#home'

  match ':controller/:action/:id'
  match ':controller/:action/:id.:format'

end
