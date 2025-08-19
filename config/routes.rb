Rails.application.routes.draw do
  get '/', to: 'puppies#index'
  get '/new', to: 'puppies#new'
  post '/puppy', to: 'puppies#create'
end
