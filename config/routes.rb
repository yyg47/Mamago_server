# frozen_string_literal: true

Rails.application.routes.draw do
  post '/graphql', to: 'graphql#execute'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'main#index'
end

Rails.application.routes.draw do
  # ...
  # if Rails.env.development?
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  # end
end