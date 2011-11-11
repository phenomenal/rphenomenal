class OperatingSystems::Linux
  act_as_context
  
  adaptations_for PagesHelper
  adapt :display_os do 
    image_tag("contexts/operating_systems/linux.png","data-caption"=>"Your OS is linux")
  end
end
