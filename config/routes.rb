Rails.application.routes.draw do
  root 'welcome#index'
  resources :programminglanguages
  resources :mots
  resources :scripts
  resources :drawings
  resources :myparts do
    member do
      get 'addmot'
      get 'adddrawing'
      get 'addscript'
    end
  end
  resources :algos do
    member do
      get 'addpart'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
