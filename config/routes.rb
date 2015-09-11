Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  get 'home/user_varification'
  get 'member' => 'home#member'
  post 'member_library_status' => 'home#member_library_status'
  resources :students
  resources :sections
  resources :courses
  resources :student_library_statuses
  resources :mail_to_members
  resources :books, only: [:index, :new, :create, :destroy]
  resources :resumes, only: [:index, :new, :create, :destroy]
  root "home#index"
end