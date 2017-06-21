Rails.application.routes.draw do
  #Root
  root 'posts#index'

  # Static pages for static information, it's not hard to understand.
  get 'contact', to: 'static_pages#contact'
  get 'abour', to: 'static_pages#about'

  # Post's routes.
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
