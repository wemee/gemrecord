Rails.application.routes.draw do
  resources :categories
  resources :cets
  resources :exercises
  resources :routines
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "routines#new"
end
