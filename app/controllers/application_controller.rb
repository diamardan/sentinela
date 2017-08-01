class ApplicationController < ActionController::Base
  #before_action :authenticate_user!, except: []
  protect_from_forgery with: :exception
end
