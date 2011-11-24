class OperatingSystems::Macos
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :display_os do 
    image_tag("contexts/operating_systems/macos.png","data-caption"=>"Your OS is Mac")
  end
end
