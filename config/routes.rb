Rails.application.routes.draw do
  get 'tasks/index'

  get 'tasks/show'

  root to: 'tasks#index'
  devise_for :users
  resources :users, :tasks
  get '/new_task' => 'tasks#new'
end
