Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: %i[index new create]
  end
  resources :reviews, only: %i[destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end

# only need to nest it if we need to know the restaurant id (new for example)
