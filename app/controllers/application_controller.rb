class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!  
  def settings(name, default = '')
    s = Setting.find_by_name(name)
    !s.nil? ? s.val : default
  end


end
