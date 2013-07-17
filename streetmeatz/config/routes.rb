Streetmeatz::Application.routes.draw do

  root :to => 'welcome#index'
  resources :vendors
  resources :menuitems
  resources :reviews
  resources :users
  get "log_out" => "sessions#destroy", as: "log_out"
  resources :sessions
end
