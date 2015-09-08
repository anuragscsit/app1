Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  root 'home#index'
  resources :students
  resources :sections
  resources :courses
  resources :student_library_statuses
end