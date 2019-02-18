Rails.application.routes.draw do
  root 'top#index'
  
  resources :snss do
    collection do
      post :confirm
    end
  end
end
