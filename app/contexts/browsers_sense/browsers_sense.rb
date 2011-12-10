feature :BrowsersSense do
  is_persistent
  
  adaptations_for PhenomenalRails::Middleware
  adapt :activation_handler do |env|
    user_agent = env["HTTP_USER_AGENT"]
    if user_agent[/(Firefox)/]
      activate_context(:Firefox) 
    elsif user_agent[/(Chrome)/]
      activate_context(:Chrome) 
    elsif user_agent[/(Safari)/]
      activate_context(:Safari)
    elsif user_agent[/(MSIE)/]
      activate_context(:InternetExplorer) 
    end
    proceed(env)
  end
  
  activate_context(:BrowsersSense)
end
