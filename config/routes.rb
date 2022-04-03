Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1, default: { format: :json } do
      resources :users, only: %i[index show create update] do
        resources :addresses, only: %i[index show create update]
        resources :phones, only: %i[index show create update destroy]
        resources :cars, only: %i[index show create update destroy]
      end
      resource :authentication, only: %i[create]
      resources :services, only: %i[index create update]
      resources :reqeusted_services, only: %i[index show create update destroy]
    end
  end
end
