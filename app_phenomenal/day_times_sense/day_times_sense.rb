feature :DayTimesSense do
  
  activation_condition do |env|
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
  end
end
