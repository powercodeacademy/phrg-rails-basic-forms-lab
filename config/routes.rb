Rails.application.routes.draw do
  resources :puppies, only: [:index, :new, :show, :create]
end
