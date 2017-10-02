Rails.application.routes.draw do
  resources :mail_us
  resources :courses
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :registrations
  get 'dashboard/index'

  devise_for :users
  root :to => "dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
