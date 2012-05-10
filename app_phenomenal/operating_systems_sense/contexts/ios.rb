feature :OperatingSystemsSense do
  context :Ios do
    
    # In combination with the analyser feature
    feature :Analyser do
      adaptations_for PagesHelper
      adapt :phenomenal_contexts_images do 
        proceed.push asset_path("contexts/operating_systems/ios.png")
      end
    end
  end
end