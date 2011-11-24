class Browsers::Safari
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :phenomenal_color do |red,green,blue|
    k=100
    pnml_proceed(red+75,green-10,blue-50)
  end
    
  adapt :display_browser do 
    image_tag("contexts/browsers/safari.png","data-caption"=>"Your browser is safari")
  end
end
