Rails.application.routes.draw do
  get 'tasks/index'

  get 'tasks/show'

  root to: 'visitors#index'
  devise_for :users
  resources :users, :tasks
  get '/new_task' => 'tasks#new'
end
