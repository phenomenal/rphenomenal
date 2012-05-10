feature :DayTimesSense do
  context :Evening do
    
    adaptations_for PagesHelper

    adapt :phenomenal_color do |r,g,b|
      k = 1.40
      proceed((r/k).to_i,(g/k).to_i,(b/k).to_i)
    end
      
    # In combination with the analyser feature
    feature :Analyser do
      adaptations_for PagesHelper
      adapt :phenomenal_contexts_images do 
        proceed.push asset_path("contexts/day_times/evening.png")
      end
    end
  end
end
