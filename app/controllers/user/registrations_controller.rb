class User::RegistrationController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters
  
  protected
  
  def configure_permitted_parameters
    devide_parameter_sanitizer.for(sign_up).push(:first_name, :last_name)
    devise_parameter_sanitizer.for(:account_update).push(:first_name, :last_name)
  end
  
end
