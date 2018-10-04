Rails.application.routes.draw do
  resources :instructors
  get 'course_pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'course_pages#home'
end
