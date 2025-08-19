Rails.application.routes.draw do
  resources :puppies, only: %i[index create post show]
end
