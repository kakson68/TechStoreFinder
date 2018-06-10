Rails.application.routes.draw do
  root 'static_page#home'

  get'about', to: 'static_page#about'

  get 'contact', to: 'static_page#contact'

  get 'help', to: 'static_page#help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

