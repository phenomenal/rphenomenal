class Locations::Belgium < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :display_location) do 
      image_tag("http://maps.googleapis.com/maps/api/staticmap?center=Belgium&zoom=6&size=940x175&maptype=roadmap&sensor=false")
    end
  end
end
