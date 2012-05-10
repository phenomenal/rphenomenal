feature :DayTimesSense do
  context :Night do
    adaptations_for PagesHelper
    
    adapt :phenomenal_color do |r,g,b|
      proceed(0,0,0)
    end
      
    # In combination with the analyser feature
    feature :Analyser do
      adaptations_for PagesHelper
      adapt :phenomenal_contexts_images do 
        proceed.push asset_path("contexts/day_times/night.png")
      end
    end
  end
end
