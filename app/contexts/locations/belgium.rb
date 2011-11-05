class Locations::Belgium < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :display_location) do 
      image_tag("contexts/locations/belgium.png")
    end
  end
end
