Rails.application.routes.draw do
  get 'tasks', to: 'tasks#index'
  get  'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id', to: 'tasks#detail', as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
