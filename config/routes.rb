Streetmeatz::Application.routes.draw do

  root :to => 'welcome#index'
  resources :vendors
  resources :menuitems
  resources :reviews
  resources :users
  get "log_out" => "sessions#destroy", as: "log_out"
  resources :sessions
  get "/loaderio-c9d91e2389bbf26b236fb3a42be92364" => "welcome#loaderio-c9d91e2389bbf26b236fb3a42be92364"
end
