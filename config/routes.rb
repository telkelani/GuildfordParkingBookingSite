Rails.application.routes.draw do
  post 'submitted_contact', to:'home#submitted'
  get 'contact',  to: 'home#contact'
  get 'success', to: 'home#successmessage'
  resources :locations
  root 'home#home'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
