Rails.application.routes.draw do
  get 'purchases/index'
  devise_for :users
  root to: "tops#index"
  resources :tops do 
      resources :purchases ,only: [:index , :create]
  end
end
