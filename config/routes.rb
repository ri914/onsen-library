Rails.application.routes.draw do
  get "home/top"
  devise_for :users
  root to: "home#top"
  post 'guest_login', to: 'sessions#guest_login'
end
