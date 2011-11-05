class Locations::UnknownCountry < Phenomenal::Declaration
  def self.define
    pnml_define_context(self.name) 
  end
end
