Rails.application.routes.draw do
  resources :completed_courses
  resources :availabilities
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :reviews
  resources :courses
  resources :universities
  resources :users
  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
