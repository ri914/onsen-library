Rails.application.routes.draw do
  root 'home#top'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_scope :user do
    get 'guest_login', to: 'users/sessions#guest_login'
  end
  get 'home/index', to: 'home#index', as: 'home_index'
  get 'mypage', to: 'users#mypage', as: 'mypage'
  get 'settings', to: 'users#settings', as: 'settings'
  resources :onsens
end
