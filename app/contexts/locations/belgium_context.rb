class Locations::BelgiumContext 
  def self.define
    pnml_define_context(:belgium) 
    pnml_add_adaptation(:belgium, PagesHelper, :display_location) do 
      image_tag("http://maps.googleapis.com/maps/api/staticmap?center=Belgium&zoom=6&size=940x175&maptype=roadmap&sensor=false")
    end
  end
end
