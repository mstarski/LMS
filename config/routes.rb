Rails.application.routes.draw do
  # Homepage
  root 'homepage#index'

  #Resources
  resources :bookstores, :collections, :books, :authors
  resources :placements, only: [:new, :create]

  #Custom routes
  get 'books/:id/bookstores' => 'books#associated_bookstores', :as => 'associated_bookstores'
end
