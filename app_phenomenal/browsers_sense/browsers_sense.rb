feature :BrowsersSense do
  
  activation_condition do |env|
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
  end
end
