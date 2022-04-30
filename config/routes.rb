Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "pets#index"

  get "pets", to: "pets#index"
  get "pets/new", to: "pets#new"

  get "pets/:id", to: "pets#show", as: :pet
  post "pets", to: "pets#create"

end

