Streetmeatz::Application.routes.draw do
  root :to => 'welcome#index'
  resources :vendors

  # Other routes will include:
  # vendors (CRUD)
  # menuitems (CRUD)
  # reviews (just to add reviews)
end
