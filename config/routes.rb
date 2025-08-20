Rails.application.routes.draw do
  get '/', to: 'puppies#index'
  get '/puppies/new', to: 'puppies#new'
  post '/puppies', to: 'puppies#create'
  get '/puppies/:id', to: 'puppies#show'
end
