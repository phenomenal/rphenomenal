context :Chrome do
  
  adaptations_for PagesHelper
  adapt :phenomenal_color do |r,g,b|
      proceed(r+50,g+50,b-75)
  end

  # In combination with the analyser feature
  feature :Analyser do
    adaptations_for PagesHelper
    adapt :phenomenal_contexts_images do 
      proceed.push asset_path("contexts/browsers/chrome.png")
    end
  end
end
