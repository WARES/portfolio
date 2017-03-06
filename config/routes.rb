Rails.application.routes.draw do
  resources :works
  get 'pages/home', as: "pages"

  get 'pages/about', as: "about"

  get 'pages/contact', as: "contact"

  resources :blogs
  root "blogs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
