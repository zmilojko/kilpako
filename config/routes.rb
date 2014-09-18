Rails.application.routes.draw do
  resources :competition_formats

  resources :events

  devise_for :users
  resources :users

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'logout', to: 'devise/sessions#destroy'
  end

  root 'main#get'
end
