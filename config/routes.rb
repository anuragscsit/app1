Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  root 'home#index'
  get 'member' => 'home#member'
  post 'member_library_status' => 'home#member_library_status'
  resources :students
  resources :sections
  resources :courses
  resources :student_library_statuses
  resources :mail_to_members
end