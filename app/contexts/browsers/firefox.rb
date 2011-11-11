class Browsers::Firefox
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :phenomenal_color do |r,g,b|
    pnml_proceed(r+50,g,b-100)
  end
    
  adapt :display_browser do 
    image_tag("contexts/browsers/firefox.png", "data-caption"=>"Your browser is firefox")
  end
    
  adapt :display_phenomenal_use_diagram do
    image_tag("project/phenomenal_use_diagram.svg")
  end
end
