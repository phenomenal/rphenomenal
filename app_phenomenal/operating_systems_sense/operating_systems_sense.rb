feature :OperatingSystemsSense do
  
  activation_condition do |env|
    user_agent = env["HTTP_USER_AGENT"]
    if user_agent[/(Android)/]
      activate_context(:Android) 
    elsif user_agent[/(Linux)/]
      activate_context(:Linux) 
    elsif user_agent[/(Windows)/]
      activate_context(:Windows) 
    elsif user_agent[/(Mac)/]
      activate_context(:Macos)
    end
  end
  
end
