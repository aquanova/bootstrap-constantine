class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActionController::RoutingError, with: :render_not_found
  rescue_from ActionController::UnknownController, with: :render_not_found

  protected
    def render_not_found
      render template: 'errors/404', layout: 'alternative', status: 404
    end
end
