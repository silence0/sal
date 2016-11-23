Rails.application.routes.draw do
  get 'login'     => 'sessions#new'
  post 'login'    => 'sessions#create' 
  delete 'logout' => 'sessions#destroy'

  get 'signup'    => 'users#new'


  
  root 'static_pages#home'

  resources :users

  resources :users do
  	resources :notices
  end

  resources :clubs

  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
