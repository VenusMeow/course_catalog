Rails.application.routes.draw do
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  resources :users
  resources :subjects
  resources :courses
  resources :instructors
  get 'course_pages/home'
  get 'course_pages/init'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'course_pages#init'
end
