Rails.application.routes.draw do
  root 'articles#index'
  resources :articles, only: [:index, :new, :show, :create, :edit, :update]
end
