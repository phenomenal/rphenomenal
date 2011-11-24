class OperatingSystems::OperatingSystems
  act_as_context :persistent
  
  adaptations_for PhenomenalRails::Middleware
  
  adapt :activation_handler do |env|
    user_agent = env["HTTP_USER_AGENT"]
    if user_agent[/(Android)/]
      pnml_activate_context(OperatingSystems::Android.name) 
    elsif user_agent[/(Linux)/]
      pnml_activate_context(OperatingSystems::Linux.name) 
    elsif user_agent[/(Windows)/]
      pnml_activate_context(OperatingSystems::Windows.name) 
    elsif user_agent[/(Mac)/]
      pnml_activate_context(OperatingSystems::Macos.name)
    end
    pnml_proceed(env)
  end
  
  pnml_activate_context(self.name)
end
