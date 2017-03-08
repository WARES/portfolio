Rails.application.routes.draw do
  resources :works, except: [:show]
  get 'portfolio/:id', to: 'works#show', as: 'portfolio_show'

  #get 'pages/about', as: "about"
  get 'about', to: 'pages#about'
  #get 'pages/contact', as: "contact"
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
