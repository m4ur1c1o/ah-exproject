Rails.application.routes.draw do

  root 'static_pages#index'
  resources :treatments

  resources :users, except: :index
  resources :history_symptoms, except: :index

<<<<<<< HEAD
  get '/faq', to: 'static_pages#faq'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get 'logout'  => 'sessions#destroy'

=======
  get '/faq', to: 'static_pages#faq'  
  get    'login'   => 'sessions#new'
  	post   'login'   => 'sessions#create'
  	get 'logout'  => 'sessions#destroy'
>>>>>>> static_pages
end
