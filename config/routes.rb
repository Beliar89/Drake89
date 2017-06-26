Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'statics/index'
  get 'statics/about'
  get 'peliculas/index'

  root :to => "statics#index"
  get '/about' => 'static#about', :as => :about

  resources :peliculas do
		resources :comentarios
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
