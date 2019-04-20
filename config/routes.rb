Rails.application.routes.draw do
  # Homepage
  root 'homepage#index'

  #Resources
  resources :bookstores
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
