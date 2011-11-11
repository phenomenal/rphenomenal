class DayTimes::Night
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :phenomenal_color do |r,g,b|
    pnml_proceed(0,0,0)
  end
    
  adapt :display_hour do 
    asset_path("contexts/day_times/night.jpg")
  end
end
