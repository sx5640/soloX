Rails.application.routes.draw do

  get 'login' => 'sessions#new', :as => :login
  post 'create' => 'sessions#create'
  delete 'logout' => 'sessions#destroy', :as => :logout

  resources :users, except: [:index] do
    resources :cups, except: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "sessions#new"
end
