Rails.application.routes.draw do
  resources :reviews
  resources :courses
  resources :universities
  devise_for :users, controllers: { sessions: 'users/sessions' }
  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
