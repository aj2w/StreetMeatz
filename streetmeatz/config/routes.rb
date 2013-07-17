Streetmeatz::Application.routes.draw do

  root :to => 'welcome#index'
  resources :vendors
  resources :menuitems
  resources :reviews
  resources :users
  resources :sessions
end
