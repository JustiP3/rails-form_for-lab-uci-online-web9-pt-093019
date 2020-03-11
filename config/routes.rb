Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
 # get '/schoolclasses/new', to: 'schoolclasses#new', as: 'new_school_class' 
  resources :schoolclasses, only: [:new, :create, :show, :edit, :update]
  resources :students, only: [:new, :create, :show, :edit, :update]

  
end
