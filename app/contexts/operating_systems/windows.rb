class OperatingSystems::Windows
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :display_os do 
    image_tag("contexts/operating_systems/windows.png","data-caption"=>"Your OS is windows")
  end
end
