Rails.application.routes.draw do
  root to: 'homes#top'
  get '/books' => 'books#index'
  post '/books' => 'books#create'
  get 'books/:id' => 'books#show' , as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id/edit' => 'books#update' , as: 'book_update'
  delete 'books/:id' => 'books#destroy', as: 'book_destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
