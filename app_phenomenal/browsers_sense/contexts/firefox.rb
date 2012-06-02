feature :BrowsersSense do
  context :Firefox do 
    
    adaptations_for PagesHelper
    adapt :phenomenal_color do |r,g,b|
      proceed(r+50,g,b-100)
    end
      
    adapt :display_phenomenal_use_diagram do
      image_tag("project/phenomenal_use_diagram.svg")
    end
    
    # In combination with the analyser feature
    feature :Analyser do
      adaptations_for PagesHelper
      adapt :phenomenal_contexts_images do 
        proceed.push asset_path("contexts/browsers/firefox.png")
      end
    end
  end
end
