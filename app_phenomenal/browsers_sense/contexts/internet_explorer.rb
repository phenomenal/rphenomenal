feature :BrowsersSense do
  context :InternetExplorer do
    
    adaptations_for PagesHelper
    
    adapt :phenomenal_color do |r,g,b|
      proceed(r,g,b+25)
    end  
    
    # In combination with the analyser feature
    feature :Analyser do
      adaptations_for PagesHelper
      adapt :phenomenal_contexts_images do 
        proceed.push asset_path("contexts/browsers/ie.png")
      end
    end
  end
end
