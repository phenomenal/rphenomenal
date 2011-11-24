class Browsers::Chrome
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :phenomenal_color do |r,g,b|
      pnml_proceed(r+50,g+50,b-75)
  end
    
  adapt :display_browser do 
    image_tag("contexts/browsers/chrome.png", "data-caption"=>"Your browser is chrome")
  end
end
