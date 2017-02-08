Rails.application.routes.draw do
  resources :comments
  resources :articles
  
  get 'articles/index'

  root 'articles#index'

  resources :articles do
  	resources :comments
  end

  resources :comments do
  	resources :articles
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
