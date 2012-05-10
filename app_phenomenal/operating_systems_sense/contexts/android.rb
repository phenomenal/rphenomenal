feature :OperatingSystemsSense do
  context :Android do
    
    adaptations_for PagesHelper
    adapt :display_os do 
      image_tag("contexts/operating_systems/android.png","data-caption"=>"Your OS is android")
    end
    
    # In combination with the analyser feature
    feature :Analyser do
      adaptations_for PagesHelper
      adapt :phenomenal_contexts_images do 
        proceed.push asset_path("contexts/operating_systems/android.png")
      end
    end
  end
end
