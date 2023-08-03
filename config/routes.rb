Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end

# only need to nest it if we need to know the restaurant id (new for example)
