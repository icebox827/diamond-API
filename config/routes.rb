Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1, default: { format: :json } do
      resources :users, only: %i[index show create update]
      resources :authentication, only: %i[create]
      resources :tranmissions, only: %i[index create]
    end
  end
end
