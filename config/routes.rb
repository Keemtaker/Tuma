
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

  resources :companies do
   resources :jobs
  end

  #for quick jobs
  resources :jobs
  get 'pricing_page', to: "static_pages#pricing_page"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
