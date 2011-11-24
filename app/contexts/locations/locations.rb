feature :Locations do
  
  adaptations_for PhenomenalRails::Middleware
  
  adapt :activation_handler do |env|
    g = GeoIP.new("#{Rails.root}/app/assets/GeoIP.dat")
    country = g.country env["REMOTE_ADDR"]
    if country.country_name=="Belgium"
      activate_context(:Belgium)
    else
      activate_context(:UnknownCountry)
    end 
    proceed(env)
  end
  
  activate_context(:Locations)
end
