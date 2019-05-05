Rails.application.routes.draw do
  # Homepage
  root 'homepage#index'

  #Resources
  resources :bookstores, :collections, :books, :authors
  resources :placements, only: [:new, :create]

  #Custom routes
  get 'collections/:col_id/bookstores' => 'collections#associated_bookstores', :as => 'associated_bookstores'
  get 'collections/:col_id/books' => 'collections#get_books', :as => 'get_books'
end
