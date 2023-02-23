Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks", to: "tasks#index"
  get "task/new", to: "tasks#new", as: :new_task
  get "task/:id", to: "tasks#show", as: :task
  post "tasks", to: "tasks#create"
  get "task/:id/edit", to: "tasks#edit", as: :edit_task
  patch "task/:id", to: "tasks#update"
  delete "task/:id", to: "tasks#destroy"
end
