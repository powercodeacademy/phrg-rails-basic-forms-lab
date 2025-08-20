Rails.application.routes.draw do
  resources :puppies, only: %i[show new create]
  get '/', to: 'puppies#index'
end
