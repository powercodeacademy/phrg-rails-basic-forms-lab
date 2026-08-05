Rails.application.routes.draw do
  resources :puppies, only: [:index, :new, :create, :show]
end
