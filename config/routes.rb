Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "persons#index"
  get "/persons/busca", to: "persons#busca"
  resources :persons
end
