Rails.application.routes.draw do

  resources :blog
  resources :products
  root 'welcome#index'

  get 'welcome/index', to: 'index/user/welcome#index', as: 'welcome'

  get 'welcome/about', to: 'welcome#about'
  get 'welcome/contact_us', to: 'welcome#contact_us'
  get 'welcome/prices', to: 'welcome#prices'

  

end
