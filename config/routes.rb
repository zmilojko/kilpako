Rails.application.routes.draw do
  resources :event_pages

  resources :runs

  resources :competitors

  resources :races

  resources :competitions

  resources :race_formats

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
