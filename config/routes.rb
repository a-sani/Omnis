Rails.application.routes.draw do
  #resources :coursev2s
  get 'courses/new'

  get 'sessions/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',    to: 'static_pages#about'
  get  '/twitter',    to: 'static_pages#twitter'
	get  '/signup',  to: 'users#new'
	get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/mycourses',  to: 'courses#existing'
  get    '/add',   to: 'subjects#new'
	resources :users
  #resources :courses
  resources :subjects
  resources :password_resets,     only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
