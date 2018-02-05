Rails.application.routes.draw do
  get 'about/index'

  get 'contact/index'

  resources :payments
  resources :help_sessions
  resources :help_session_requests
  resources :completed_courses
  resources :availabilities
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :reviews
  resources :courses
  resources :universities
  resources :users

  get 'help_session_requests/:id/accept', to: 'help_session_requests#accept', as: :help_session_requests_accept
  get 'contact', to: 'contact#index'
  get 'about', to: 'about#index'

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
