Rails.application.routes.draw do
  resources :articles , only: [:index,:new,:create,:show]
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id' ,to:'articles#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# Prefix Verb  URI Pattern                  Controller#Action
#     articles GET   /articles(.:format)          articles#index
#              POST  /articles(.:format)          articles#create
#  new_article GET   /articles/new(.:format)      articles#new
# edit_article GET   /articles/:id/edit(.:format) articles#edit
#              PATCH /articles/:id(.:format)      articles#update