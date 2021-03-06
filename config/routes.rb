# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/posts', to: 'posts#index'
      post '/posts', to: 'posts#create'
      get '/posts/:id/comments', to: 'comments#index'
      post '/posts/:id/comments', to: 'comments#create'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
                     controllers: {
                       sessions: 'users/sessions',
                       registrations: 'users/registrations'
                     }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
