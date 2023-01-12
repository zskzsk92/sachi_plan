Rails.application.routes.draw do
  root to: 'task_lists#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :task_lists
end
