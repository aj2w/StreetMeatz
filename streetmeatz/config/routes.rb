Streetmeatz::Application.routes.draw do
  devise_for :users

  root :to => 'welcome#index'
  resources :vendors
  resources :menuitems
  resources :reviews
end
