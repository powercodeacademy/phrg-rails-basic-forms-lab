Rails.application.routes.draw do
  get '/', to: 'puppies#index'
  get '/puppies/new', to: 'puppies#new'
  post '/puppies', to: 'puppies#create'
  get '/puppies/:id', to: 'puppies#show'
  # TODO: Add your routes here
  # You need to use RESTful routing conventions
  # Hint: Use the resources method to create all the standard RESTful routes
  # This will create routes for index, show, new, create, edit, update, and destroy
end
