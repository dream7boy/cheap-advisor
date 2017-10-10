Rails.application.routes.draw do
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  # get '/', to: 'pages#home'
  root to: 'pages#home'
  get 'restaurants', to: "restaurants#index"
  get 'restaurants/:id', to: "restaurants#show"
  post 'restaurants', to: "restaurants#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
