class ApplicationController < ActionController::Base
  before_action :require_login
  protect_from_forgery with: :exception
end
