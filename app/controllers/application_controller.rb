class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :get_notifications
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
  end

  def get_notifications
    if user_signed_in?
      @requests = HelpSessionRequest.where(tutor_id: current_user.id, accepted: nil, denied: nil)
      @requests.each do |request|
        request.user_name = User.find(request.user_id).name
      end
    end
  end
end
