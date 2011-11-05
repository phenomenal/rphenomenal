class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :activate_contexts
  include ApplicationHelper
  private
  def activate_contexts
    # Hour contexts
    hour = Time.now.hour
    if hour >= 6 && hour < 12
      pnml_activate_context(DayTimes::Morning.name) 
    elsif hour >= 12 && hour <18
      pnml_activate_context(DayTimes::Afternoon.name) 
    elsif hour >= 18 && hour < 23
      pnml_activate_context(DayTimes::Evening.name) 
    else
       pnml_activate_context(DayTimes::Night.name) 
    end
    
    # Browser context
    user_agent = request.user_agent
    puts user_agent
    if user_agent[/(Firefox)/]
      pnml_activate_context(Browsers::Firefox.name) 
    elsif user_agent[/(Chrome)/]
      pnml_activate_context(Browsers::Chrome.name) 
    elsif user_agent[/(Safari)/]
      pnml_activate_context(Browsers::Safari.name)
    elsif user_agent[/(MSIE)/]
      pnml_activate_context(Browsers::InternetExplorer.name) 
    end
    
    # OS context
    if user_agent[/(Android)/]
      pnml_activate_context(OperatingSystems::Android.name) 
    elsif user_agent[/(Linux)/]
      pnml_activate_context(OperatingSystems::Linux.name) 
    elsif user_agent[/(Windows)/]
      pnml_activate_context(OperatingSystems::Windows.name) 
    elsif user_agent[/(Mac)/]
      pnml_activate_context(OperatingSystems::Macos.name)
    end
    
    # Country context
    g = GeoIP.new("#{Rails.root}/app/assets/GeoIP.dat")
    country = g.country request.remote_ip
    if country.country_name=="Belgium"
      pnml_activate_context(Locations::Belgium.name)
    else
      pnml_activate_context(Locations::UnknownCountry.name)
    end 
  end
end
