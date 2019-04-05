Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/new'
  get 'home/my_setup'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
