class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if params[:user][:remove_avatar] == "1"
      @user.avatar.purge
    end
  
    if @user.update(params.require(:user).permit(:name, :introduce, :avatar))
      redirect_to user_path
    else
      render:edit
    end
  end

  def destroy
    @user = current_user
    @user.onsens.destroy_all if @user.onsens.present?
    @user.destroy
    redirect_to root_path, notice: '退会しました。'
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :avatar, :password, :password_confirmation, :current_password)
  end
end
