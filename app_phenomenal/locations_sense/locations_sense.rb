feature :LocationsSense do
  
  activation_condition do |env|
    g = GeoIP.new("#{Rails.root}/app/assets/GeoIP.dat")
    country = g.country env["REMOTE_ADDR"]
    if country.country_name=="Belgium"
      activate_context(:Belgium)
    else
      activate_context(:UnknownCountry)
    end 
  end
end
