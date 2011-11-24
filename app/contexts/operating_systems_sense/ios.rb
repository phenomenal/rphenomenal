class OperatingSystems::Ios
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :display_os do 
    image_tag("contexts/operating_systems/ios.png","data-caption"=>"Your OS is iOS")
  end
end
