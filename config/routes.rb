Rails.application.routes.draw do

  devise_for :users
  root 'home#home'
  post 'submitted_contact', to:'home#submitted'
  get 'contact',  to: 'home#contact'
  resources :locations, :only => :show
  #Only specifies which routes rails should create for the model
  #:show is the attribute of the controller. the website will only create show route
  #I want this so the user cannot edit the locations, destroy or create new ones
  #Any locations that should be added should be edited in db:seed file

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
