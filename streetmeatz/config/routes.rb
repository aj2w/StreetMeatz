Streetmeatz::Application.routes.draw do
  root :to => 'welcome#index'
  get '/vendors' => 'vendors#index'

  # Other routes will include:
  # streetcarts (CRUD)
  # menuitems (CRUD)
  # reviews (just to add reviews)
end
