feature :DayTimesSense do
  is_persistent
  adaptations_for PhenomenalRails::Middleware
  adapt_class :activation_handler do |env|
    hour = Time.now.hour
    if hour >= 6 && hour < 12
      activate_context(:Morning) 
    elsif hour >= 12 && hour <18
      activate_context(:Afternoon) 
    elsif hour >= 18 && hour < 23
      activate_context(:Evening) 
    else
       activate_context(:Night) 
    end
    proceed(env)
  end
end
