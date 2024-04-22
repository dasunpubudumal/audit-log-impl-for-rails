class ApplicationController < ActionController::Base
  include AuthenticationModule
  helper_method :current_user
end
