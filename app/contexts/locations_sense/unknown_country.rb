context :UnknownCountry do
  
  adaptations_for PagesHelper
  
  adapt :display_location do
    image_tag("http://maps.googleapis.com/maps/api/staticmap?zoom=0&size=175x175&maptype=roadmap&sensor=false")
  end
end
