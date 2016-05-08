Rails.application.routes.draw do

  root 'static_pages#index'
  resources :treatments

  resources :users, except: :index
  resources :history_symptoms, except: :index

  get '/faq', to: 'static_pages#faq'
end
