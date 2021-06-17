Rails.application.routes.draw do
  get 'users/show'
  get 'books/index'
  get 'books/show'
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
