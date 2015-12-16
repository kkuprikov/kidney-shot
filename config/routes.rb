Rails.application.routes.draw do
  get 'tasks/index'

  get 'tasks/show'

  root to: 'tasks#index'
  
  devise_for :users do
  	delete "/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  resources :users, :tasks
  get '/new_task' => 'tasks#new'
end
