class ApplicationController < ActionController::Base

  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  protect_from_forgery prepend: true
  before_action :prepare_exception_notifier
  helper Starburst::AnnouncementsHelper
  private
  def prepare_exception_notifier
    request.env["exception_notifier.exception_data"] = {
      :current_user => current_user
    }
  end
end
