class DayTimes::Afternoon
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :phenomenal_color do |r,g,b|
    pnml_proceed(r,g,b)
  end
    
  adapt :display_hour do 
    asset_path("contexts/day_times/afternoon.jpg")
  end
end
