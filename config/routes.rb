Rails.application.routes.draw do
  resources :genres, only: [:create, :show, :update]
  resources :artists, only: [:create, :show, :update, :new]
  resources :songs, only: [:create, :show, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
