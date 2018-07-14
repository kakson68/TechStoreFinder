Rails.application.routes.draw do
  devise_for :users
  resources :solutions
  resources :serviceproviders
  resources :repairs
  root to: 'static_page#home'
   get 'home', to: 'static_page#home'

  get 'about', to: 'static_page#about'

  get 'contact', to: 'static_page#contact'

  get 'help', to: 'static_page#help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

