Rails.application.routes.draw do
  root 'items#index'
  
  get 'cart/index'
  get '/cart/:id', to:'cart#add'
  get '/cart/remove/:id', to:'cart#remove'
 
  
 
 
  
  get 'users/new'
  get '/admin', to: 'users#admin_login'
  get '/logout', to: 'users#logout'

  get 'static_pages/about'

  get 'static_pages/contact'

  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
