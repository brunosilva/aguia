class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    # Redirecionar para uma página específica, como dashboard
    dashboard_path
  end

  layout :layout_by_resource

  private

  def layout_by_resource
    "authentication" if devise_controller?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: %i[name username]
  end
end
