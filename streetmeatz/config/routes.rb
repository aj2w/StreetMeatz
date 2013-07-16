Streetmeatz::Application.routes.draw do
  root :to => 'welcome#index'
  resources :vendors
  resources :menuitems
  resources :reviews

  # Other routes will include:
  # vendors (CRUD)
  # menuitems (CRUD)
  # reviews (just to add reviews)
end
