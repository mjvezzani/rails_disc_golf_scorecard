Rails.application.routes.draw do
  resources :holes
  resources :courses
  resources :rounds

  root 'home#index'
end
