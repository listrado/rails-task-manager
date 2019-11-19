Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: :tasks
  get 'tasks/:id', to: 'tasks#show', as: :task
  get 'new', to: 'tasks#new', as: :new
  get 'home', to: 'tasks#home', as: :home
  post 'create', to: 'tasks#create', as: :create
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
  post 'tasks/:id', to: 'tasks#update', as: :update
end
