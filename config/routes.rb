Rails.application.routes.draw do
  get 'enroll/enroll'

  get 'enroll/result'

  get 'search/search'

  get 'search/result'

  get 'sessions/new'

  get '/enroll',  to: 'enroll#enroll'

  get  '/search',  to: 'search#search'
  post '/search',  to: 'search#result'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :subjects
  resources :courses
  resources :instructors
  get 'course_pages/home'
  get 'course_pages/init'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'course_pages#init'
end
