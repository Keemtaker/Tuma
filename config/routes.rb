
Rails.application.routes.draw do
  devise_for :users
  root to: 'companies#new'
  get 'jobs', to: 'jobs#index'
  get 'jobs', to: 'jobs#show'


  resources :companies do
   resources :jobs, only: [:new, :create, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
