Rails.application.routes.draw do
  resources :books, except: [:destroy, :new, :create]
  resources :authors
  resources :author_books, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
