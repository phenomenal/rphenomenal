feature :OperatingSystemsSense do
  context :Macos do
    
    adaptations_for PagesHelper
    adapt :display_os do 
      image_tag("contexts/operating_systems/macos.png","data-caption"=>"Your OS is Mac")
    end
    
    # In combination with the analyser feature
    feature :Analyser do
      adaptations_for PagesHelper
      adapt :phenomenal_contexts_images do 
        proceed.push asset_path("contexts/operating_systems/macos.png")
      end
    end
  end
end
