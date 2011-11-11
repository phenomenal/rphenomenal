class Locations::Belgium
  act_as_context
  
  adaptations_for PagesHelper
  
  adapt :display_location do 
    image_tag("contexts/locations/belgium.png")
  end
end
