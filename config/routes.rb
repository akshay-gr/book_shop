Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # You can have the root of your site routed with "root"
  root 'dashboard#index'

  resources :books, :only => [:show]  
end
