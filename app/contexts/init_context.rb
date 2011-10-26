# Fix problem without page caching
ActionDispatch::Callbacks.before do
  
  if !Rails.configuration.cache_classes
    pnml_defined_contexts.each do |context|
      while pnml_context_active?(context) do
        pnml_deactivate_context(context)
      end
      pnml_forget_context(context)
    end
    InitContext.define_contexts
  end
end

class InitContext
  pnml_change_conflict_policy { |a,b| age_conflict_policy(a,b) }
  # Context definition
  def self.define_contexts()
    pnml_define_context(:morning)
    pnml_add_adaptation(:morning, ApplicationHelper, :phenomenal_color) do |r,g,b|
      k = 1.40
      pnml_proceed((r*k).to_i,(g*k).to_i,(b*k).to_i)
    end
    
    pnml_define_context(:afternoon)
    pnml_add_adaptation(:afternoon, ApplicationHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r,g,b)
    end
    
    pnml_define_context(:evening)
    pnml_add_adaptation(:evening, ApplicationHelper, :phenomenal_color) do |r,g,b|
      k = 1.40
      pnml_proceed((r/k).to_i,(g/k).to_i,(b/k).to_i)
    end

    pnml_define_context(:internetexplorer)  
    pnml_add_adaptation(:internetexplorer, ApplicationHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r,g,b+25)
    end
    
    pnml_define_context(:firefox)  
    pnml_add_adaptation(:firefox, ApplicationHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r+50,g,b-100)
    end
    
    pnml_add_adaptation(:firefox, ApplicationHelper, :display_browser) do 
      image_tag("firefox.png")
    end
    
    
    pnml_define_context(:chrome) 
    pnml_add_adaptation(:chrome, ApplicationHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r+50,g+50,b-75)
    end
    
    pnml_add_adaptation(:chrome, ApplicationHelper, :display_browser) do 
      image_tag("chrome.png")
    end
    
    pnml_define_context(:safari)  
    pnml_add_adaptation(:safari, ApplicationHelper, :phenomenal_color) do |red,green,blue|
      k=100
      pnml_proceed(red+75,green-50,blue-50)
    end
    
    pnml_add_adaptation(:safari, ApplicationHelper, :display_browser) do 
      image_tag("safari.jpg")
    end

#    pnml_define_context(:geo_ip)
#    pnml_add_adaptation(:geo_ip, ApplicationHelper, :phenomenal_color) do |red,green,blue|
#      "yellow"
#    end
  end
end
