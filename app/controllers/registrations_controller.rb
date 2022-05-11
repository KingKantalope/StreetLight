class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(current_user)
    '/users/edit' # Or :prefix_to_your_route
  end


  def update_resource(current_user, params)
    resource.update_without_password(params)
  end

  before_action :update_sanitized_params, if: :devise_controller?

    def update_sanitized_params
      devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:username, :email, :password, :password_confirmation, :name)}
      devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:name, :phone_number, :email, :password, :password_confirmation, :current_password)}
    end

  def after_update_path_for(current_user)
    '/home/profile'
  end
end