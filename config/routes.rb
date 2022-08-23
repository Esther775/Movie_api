Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #index action:

  get "/movies" => "movies#index"

  #show action:

  get "movies/:id" => "movies#show"

  #create action:
  post "/movies" => "movies#create"

  #update action

  patch "movies/:id" => "movies#update"

  #delete action:

  delete "movies/:id" => "movies#destroy"
end
