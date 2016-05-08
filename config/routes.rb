Rails.application.routes.draw do

  root 'static_pages#index'
  resources :treatments

  resources :users, except: :index
  resources :history_symptoms, except: :index

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
end
