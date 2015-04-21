Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: '/auth'
 
  root to: 'tunes#index'
 
  get 'tunes/index'
  resources :tunes
  resources :genres

  get :all_tunes, to: 'tunes#all_tunes', as: :all_tunes
  get :all_genres, to: 'genres#all_genres', as: :all_genres

end
