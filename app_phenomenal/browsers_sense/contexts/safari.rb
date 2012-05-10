feature :BrowsersSense do
  context :Safari do
    
    adaptations_for PagesHelper
    
    adapt :phenomenal_color do |red,green,blue|
      k=100
      proceed(red+75,green-10,blue-50)
    end
      
    # In combination with the analyser feature
    feature :Analyser do
      adaptations_for PagesHelper
      adapt :phenomenal_contexts_images do 
        proceed.push asset_path("contexts/browsers/safari.png")
      end
    end
  end
end
