Rails.application.routes.draw do
  resources :microposts, only: [:create, :show, :destroy]

  devise_for :users
  root to: 'top_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
