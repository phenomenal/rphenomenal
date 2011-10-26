class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :activate_contexts
  include ApplicationHelper
  private
  def activate_contexts
    # Hour contexts
    hour = Time.now.hour
    if hour < 12
      pnml_activate_context(:morning) 
    elsif hour <18
      pnml_activate_context(:afternoon) 
    elsif hour >= 18
      pnml_activate_context(:evening) 
    end
    
    # User agent context
    req_env = request.env["HTTP_USER_AGENT"]
    puts req_env
    if req_env[/(Firefox)/]
      pnml_activate_context(:firefox) 
    elsif req_env[/(Chrome)/]
      pnml_activate_context(:chrome) 
    elsif req_env[/(Safari)/]
      pnml_activate_context(:safari)
    elsif req_env[/(MSIE)/]
      pnml_activate_context(:internetexplorer) 
    end
  end
end
