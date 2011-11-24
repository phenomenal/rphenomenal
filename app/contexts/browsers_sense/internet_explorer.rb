class Browsers::InternetExplorer
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :phenomenal_color do |r,g,b|
    pnml_proceed(r,g,b+25)
  end  
  
  adapt :display_browser do 
    image_tag("contexts/browsers/ie.png", "data-caption"=>"Your browser is MS IE")
  end
end
