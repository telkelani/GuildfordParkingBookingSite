Rails.application.routes.draw do
  root 'home#home'
  post 'submitted_contact', to:'home#submitted'
  get 'contact',  to: 'home#contact'
  resources :locations

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
