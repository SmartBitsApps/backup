Rails.application.routes.draw do
  
  devise_for :users#, controllers: {
        #sessions: 'users/sessions',
        #passwords: 'users/passwords',
        #shared: 'users/shared'
      #}
  resources :categories, only: [:index] do
    resources :products, only: [:index]
  end
  
  root to: 'categories#index'
  
  #root 'pages#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
