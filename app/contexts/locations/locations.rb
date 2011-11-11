class Locations::Locations
  act_as_context
  
  adaptations_for Phenomenal::Middelware
  
  adapt :activation_handler do |env|
    g = GeoIP.new("#{Rails.root}/app/assets/GeoIP.dat")
    country = g.country env["REMOTE_IP"]
    if country.country_name=="Belgium"
      pnml_activate_context(Locations::Belgium.name)
    else
      pnml_activate_context(Locations::UnknownCountry.name)
    end 
    pnml_proceed(env)
  end
  
  pnml_activate_context(self.name)
end
