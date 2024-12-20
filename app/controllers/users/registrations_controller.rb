class Users::RegistrationsController < Devise::RegistrationsController
  def edit
    @page_title = "アカウント設定"
    super
  end

  def create
    super do |resource|
      if resource.persisted?
        flash[:notice] = t('devise.registrations.account_created')
      end
    end
  end

  def after_sign_up_path_for(resource)
    home_index_path
  end
end
