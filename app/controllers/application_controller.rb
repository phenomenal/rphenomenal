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
    
    # Browser context
    user_agent = request.user_agent
    if user_agent[/(Firefox)/]
      pnml_activate_context(:firefox) 
    elsif user_agent[/(Chrome)/]
      pnml_activate_context(:chrome) 
    elsif user_agent[/(Safari)/]
      pnml_activate_context(:safari)
    elsif user_agent[/(MSIE)/]
      pnml_activate_context(:internetexplorer) 
    end
    # OS context
    if user_agent[/(Linux)/]
      pnml_activate_context(:linux) 
    elsif user_agent[/(Windows)/]
      pnml_activate_context(:windows) 
    elsif user_agent[/(Mac)/]
      pnml_activate_context(:mac)
    end
    
    g = GeoIP.new("#{Rails.root}/app/assets/GeoIP.dat")
    country = g.country request.remote_ip
    if country =="Belgium"
      pnml_activate_context(:belgium)
    else
      pnml_activate_context(:unknown_country)
    end 
    
  end
end
