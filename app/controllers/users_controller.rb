class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_guest_user, only: [:settings, :update, :destroy]

  def mypage
  end

  def settings
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to settings_path, notice: '設定が更新されました。'
    else
      render :settings
    end
  end

  def destroy
    current_user.destroy
    redirect_to root_path, notice: '退会が完了しました。'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def check_guest_user
    if current_user.guest?
      redirect_to settings_path, alert: 'ゲストユーザーは設定を変更できません。'
    end
  end
end
