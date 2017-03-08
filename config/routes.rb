Rails.application.routes.draw do
  resources :works
  
  #get 'pages/about', as: "about"
  get 'about', to: 'pages#about'
  #get 'pages/contact', as: "contact"
  get 'contact', to: 'pages#contact'

  resources :blogs

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
