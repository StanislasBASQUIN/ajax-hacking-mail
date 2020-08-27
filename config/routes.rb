Rails.application.routes.draw do
  
  #Création des routes
  root 'emails#index'
  resources :emails
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
