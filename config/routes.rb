Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  root to: "posts#index"

  resources :categories
  resources :posts
  resources :bigbanners
  resources :smallbanners

  devise_scope :admin do
  get '/admin' => 'devise/sessions#new'
  end


end
