Rails.application.routes.draw do
 
  root 'static_pages#index'
  resources :treatments

  resources :users, except: :index
end
