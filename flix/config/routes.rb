Flix::Application.routes.draw do
  devise_for :users
  # non-resourceful routing
  get 'about' => 'movies#about'
  get 'privacy' => 'movies#privacy'
  get 'films', to: redirect('/movies')

  get 'movies/recommended/:placement' => 'movies#recommended'
  
  # resourceful routing
  resources :movies
  resources :genres, only: :show

  #root
  root 'movies#index'

  #optional
  get 'text-m-for-murder' => 'movies#murder'
end
