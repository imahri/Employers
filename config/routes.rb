Rails.application.routes.draw do
  # get 'employers/index'
  # get 'employers/show'
  # get 'employers/edit'
  # get 'employers/new'

  resources :employers
  # resources :employers do
  #   member do
  #     get 'confirm_delete'
  #   end
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: 'employers#index'
end
