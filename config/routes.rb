Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'

  root 'static_pages#home'
  get '/help', to: 'static_pages#about'
  get '/about', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
