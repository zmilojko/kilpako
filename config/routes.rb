Rails.application.routes.draw do
  resources :users

  root 'main#get'
end
