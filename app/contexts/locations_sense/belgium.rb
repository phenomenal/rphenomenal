feature :LocationsSense do
  context :Belgium do
    
    adaptations_for PagesHelper
    
    adapt :display_location do 
      image_tag("http://maps.googleapis.com/maps/api/staticmap?center=Belgium&zoom=6&size=175x175&maptype=roadmap&sensor=false")
    end
  end
end
