class OperatingSystems::Android
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :display_os do 
    image_tag("contexts/operating_systems/android.png","data-caption"=>"Your OS is android")
  end
end
