Rails.application.routes.draw do
  root to: 'home#top'
  
  get "home/top"
  devise_for :users
  post 'guest_login', to: 'sessions#guest_login'
  get 'login', to: 'devise/sessions#new'
  get 'signup', to: 'devise/registrations#new'
end
