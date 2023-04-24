Rails.application.routes.draw do
  root to: 'homes#top'
  get '/index' => 'books#index'
  post '/index' => 'books#create'
  get 'index/:id' => 'books#show' , as: 'book'
  get 'index/:id/edit' => 'books#edit', as: 'book_edit'
  patch 'index/:id' => 'books#update' , as: 'book_update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
