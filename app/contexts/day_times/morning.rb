class DayTimes::Morning
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :phenomenal_color do |r,g,b|
    k = 1.40
    pnml_proceed((r*k).to_i,(g*k).to_i,(b*k).to_i)
  end
  
  adapt :display_hour do 
    asset_path("contexts/day_times/morning.jpg")
  end
end
