class Browsers::Browsers
  act_as_context :persistent
  
  adaptations_for PhenomenalRails::Middleware
  
  adapt :activation_handler do |env|
    user_agent = env["HTTP_USER_AGENT"]
    if user_agent[/(Firefox)/]
      pnml_activate_context("Browsers::Firefox") 
    elsif user_agent[/(Chrome)/]
      pnml_activate_context("Browsers::Chrome") 
    elsif user_agent[/(Safari)/]
      pnml_activate_context("Browsers::Safari")
    elsif user_agent[/(MSIE)/]
      pnml_activate_context("Browsers::InternetExplorer") 
    end
    pnml_proceed(env)
  end
  
  pnml_activate_context(self.name)
end
