class Users::SessionsController < Devise::SessionsController
  # ログイン後のリダイレクト先をカスタマイズ
  def after_sign_in_path_for(resource)
    # ログイン後に遷移させたいパスを指定
    index_path # ここをindexに変更
  end

  # ログアウト後のリダイレクト先をカスタマイズ
  def after_sign_out_path_for(resource_or_scope)
    # ログアウト後に遷移させたいパスを指定
    root_path # ここをtopに変更（root_pathがトップページを指す場合）
  end

  def guest_login
    # ゲストユーザーを取得
    user = User.find_by(email: 'guest@example.com')
    
    if user.present?
      sign_in user # ゲストユーザーとしてサインイン
      redirect_to index_path, notice: 'ゲストログインしました。'
    else
      redirect_to new_user_registration_path, alert: 'ゲストユーザーが見つかりません。'
    end
  end
end
