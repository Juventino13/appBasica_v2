Rails.application.routes.draw do
 
  resources :productos

  get 'productos/index'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
