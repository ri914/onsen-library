class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      if resource.persisted?
        flash[:notice] = 'アカウントを作成しました。'
      end
    end
  end

  def after_sign_up_path_for(resource)
    home_index_path
  end
end
