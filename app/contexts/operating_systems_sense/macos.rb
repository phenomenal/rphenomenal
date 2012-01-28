feature :OperatingSystemsSense do
  context :Macos do
    
    adaptations_for PagesHelper
    
    adapt :display_os do 
      image_tag("contexts/operating_systems/macos.png","data-caption"=>"Your OS is Mac")
    end
  end
end