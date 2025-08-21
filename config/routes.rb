Rails.application.routes.draw do
  resources :puppies, only: [:index, :show, :new, :create]
end
