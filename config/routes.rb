Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  devise_scope :user do
    get 'guest_login', to: 'users/sessions#guest_login' # ゲストログインのルート
  end

  root 'home#top' # トップページ
  get 'index', to: 'home#index' # ログイン後のインデックスページへのルート
end
