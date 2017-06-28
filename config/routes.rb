Rails.application.routes.draw do
  get 'select_movies/index'

  get 'settings/index'

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'statics/index'
  get 'statics/about'
  get 'peliculas/index'
  get '/about' => 'static#about', :as => :about

  resources :peliculas
  resources :comentarios
  resources :settings
  resources :charges
  resources :select_movies, only: :index

  root :to => "statics#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
