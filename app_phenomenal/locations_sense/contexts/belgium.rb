feature :LocationsSense do
  context :Belgium do
    
    # In combination with the analyser feature
    feature :Analyser do
      adaptations_for PagesHelper
      adapt :phenomenal_contexts_images do 
        proceed.push asset_path("contexts/locations/belgium.png")
      end
    end
  end
end
