Rails.application.routes.draw do
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # get 'books' => 'books#bookstop'
  get 'books' => 'books#index'
  post "books" => "books#create"
  root to: 'books#top'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books
end
