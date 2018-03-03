
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  authenticated :user do
  root :to => 'companies#new', as: :authenticated_root
end

  root to: 'jobs#index'
    resources :jobs, only: [:index] do
      resources :applicants, only: [:show, :new, :create]
      get 'applicants/:id/dashboard', to: "companies#dashboard", on: :member
    end
        #get 'applicant_id/dashboard', to: 'companies#dashboard', on: :member

  get 'dashboard', to: "companies#dashboard"


  resources :companies do
   resources :jobs, only: [:show, :new, :create, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
