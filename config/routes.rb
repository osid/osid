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

  get '/feed' => 'blogposts#feed', :as => :feed, :defaults => { :format => 'atom' }

  get '/contact' => 'pages#contact'
  get '/about'  => 'pages#about'
  get '/help'  => 'pages#help'
  get '/signup' => 'users#new'
  get '/signin' => 'sessions#new'
  get '/signout' => 'sessions#destroy'
  get '/news' => 'pages#news'
  get '/privacy' => 'pages#privacy'
  get '/contribute' => 'pages#contribute'
  get '/search' => 'pages#search'
  get '/admin' => 'pages#admin'

  #root :to => "incidents#index"
  root :to => "pages#home"

  get '/' => 'pages#home'
  get '/home' => 'pages#home'

  get ':controller/:action/:id'
  get ':controller/:action/:id.:format'

end
