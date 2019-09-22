Rails.application.routes.draw do
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  resources :genres, only: [:index, :show, :new, :create, :edit, :update]
  resources :artists, only: [:index, :show, :new, :create, :edit, :update]
  get '/songs/:id/activate', to: 'songs#activate', as: 'activate_song'
  get '/genres/:id/activate', to: 'genres#activate', as: 'activate_genre'
  get '/artists/:id/activate', to: 'artists#activate', as: 'activate_artist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
