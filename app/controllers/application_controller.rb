class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :redirect_subdomain

  def redirect_subdomain
  	if request.host == 'www.ideas.network'
    	redirect_to 'http://ideas.network' + request.fullpath
  	end
  end

end
