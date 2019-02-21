Rails.application.routes.draw do  
  
  resources :sessions, only: [:new, :create, :destroy]

  resources :user, only: [:new, :create, :show]
  
  root 'top#index'
  
  resources :snss do
    collection do
      post :confirm
    end
  end
end
