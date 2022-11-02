class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :cor
    def cor
      headers["Access-Control-Allow-Origin"]  = "*"
      headers["Access-Control-Allow-Methods"] = %w{GET POST PUT DELETE}.join(",")
      headers["Access-Control-Allow-Headers"] = %w{Origin Accept Content-Type X-Requested-With X-CSRF-Token}.join(",")
      head(:ok) if request.request_method == "OPTIONS"
    end
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:city,:country,:role])
    end
end
