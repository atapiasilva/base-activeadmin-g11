Rails.application.routes.draw do

  resources :comments
  resources :posts
  get 'pages/index'

  root 'pages#index'

  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations'
   }

   devise_for :admin_users, ActiveAdmin::Devise.config
   ActiveAdmin.routes(self)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
