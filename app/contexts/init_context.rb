ActionDispatch::Callbacks.before do
  pnml_defined_contexts.each do |context|
    if context != pnml_default_context || !Rails.configuration.cache_classes
      while pnml_context_active?(context) do
        pnml_deactivate_context(context) 
      end
    end
    # Fix problem without page caching
    if !Rails.configuration.cache_classes
      pnml_forget_context(context)
    end
  end
  # Fix problem without page caching
  if !Rails.configuration.cache_classes
    InitContext.define_contexts
  end
end

class InitContext
  pnml_change_conflict_policy { |a,b| age_conflict_policy(a,b) }
  # Context definition
  def self.define_contexts()
    puts("-------------->DEEFFINNNNEE CONNTEEXXTT")
    pnml_define_context(:morning)
    pnml_add_adaptation(:morning, ApplicationHelper, :phenomenal_color) do |r,g,b|
      k = 1.40
      pnml_proceed((r*k).to_i,(g*k).to_i,(b*k).to_i)
    end
    
    pnml_add_adaptation(:morning, ApplicationHelper, :display_hour) do 
      image_tag("morning.jpeg", "data-caption"=>"We are in the morning")
    end
    
    pnml_define_context(:afternoon)
    pnml_add_adaptation(:afternoon, ApplicationHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r,g,b)
    end
    
    pnml_add_adaptation(:afternoon, ApplicationHelper, :display_hour) do 
      image_tag("afternoon.jpg","data-caption"=>"We are in the after noon")
    end
    
    pnml_define_context(:evening)
    pnml_add_adaptation(:evening, ApplicationHelper, :phenomenal_color) do |r,g,b|
      k = 1.40
      pnml_proceed((r/k).to_i,(g/k).to_i,(b/k).to_i)
    end
    
    pnml_add_adaptation(:evening, ApplicationHelper, :display_hour) do 
      image_tag("evening.jpg","data-caption"=>"We are in the evening")
    end

    pnml_define_context(:internetexplorer)  
    pnml_add_adaptation(:internetexplorer, ApplicationHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r,g,b+25)
    end
    pnml_add_adaptation(:internetexplorer, ApplicationHelper, :display_browser) do 
      image_tag("internetexplorer.jpg", "data-caption"=>"Your browser is MS IE")
    end
    
    pnml_define_context(:firefox)  
    pnml_add_adaptation(:firefox, ApplicationHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r+50,g,b-100)
    end
    
    pnml_add_adaptation(:firefox, ApplicationHelper, :display_browser) do 
      image_tag("firefox.png", "data-caption"=>"Your browser is firefox")
    end
    
    
    pnml_define_context(:chrome) 
    pnml_add_adaptation(:chrome, ApplicationHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r+50,g+50,b-75)
    end
    
    pnml_add_adaptation(:chrome, ApplicationHelper, :display_browser) do 
      image_tag("chrome.png", "data-caption"=>"Your browser is chrome")
    end
    
    pnml_define_context(:safari)  
    pnml_add_adaptation(:safari, ApplicationHelper, :phenomenal_color) do |red,green,blue|
      k=100
      pnml_proceed(red+75,green-50,blue-50)
    end
    
    pnml_add_adaptation(:safari, ApplicationHelper, :display_browser) do 
      image_tag("safari.jpg","data-caption"=>"Your browser is safari")
    end
    
    pnml_define_context(:linux) 
    pnml_add_adaptation(:linux, ApplicationHelper, :display_os) do 
      image_tag("linux.png","data-caption"=>"Your OS is linux")
    end
    pnml_define_context(:mac) 
    pnml_add_adaptation(:mac, ApplicationHelper, :display_os) do 
      image_tag("mac.jpg","data-caption"=>"Your OS is mac")
    end
    pnml_define_context(:windows) 
    pnml_add_adaptation(:windows, ApplicationHelper, :display_os) do 
      image_tag("windows.png","data-caption"=>"Your OS is windows")
    end
    
    pnml_define_context(:belgium) 
    pnml_add_adaptation(:belgium, ApplicationHelper, :display_location) do 
      image_tag("http://maps.googleapis.com/maps/api/staticmap?center=Belgium&zoom=6&size=500x150&maptype=roadmap&sensor=false", "data-caption"=>"You are in Belgium")
    end
    pnml_define_context(:unknown_country) 
  end
end
