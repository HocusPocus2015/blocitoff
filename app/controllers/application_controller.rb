class ApplicationController < ActionController::Base
#  devise_for :users, controllers: { sessions: "users/sessions"}

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
#  def configure_permitted_parameters
#    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
#  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:username, :email)
    end
  end
  
#  devise_scope :user do
#    get "sign_in", to: "devise/sessions#new"
#  end
  
 
end


  