Rails.application.routes.draw do
  resources :puppy, only: %i[index new create]
end
