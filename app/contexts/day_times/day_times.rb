class DayTimes::DayTimes
  act_as_context :persistent
  adaptations_for Phenomenal::Middleware
  adapt :activation_handler do |env|
    hour = Time.now.hour
    if hour >= 6 && hour < 12
      pnml_activate_context(DayTimes::Morning.name) 
    elsif hour >= 12 && hour <18
      pnml_activate_context(DayTimes::Afternoon.name) 
    elsif hour >= 18 && hour < 23
      pnml_activate_context(DayTimes::Evening.name) 
    else
       pnml_activate_context(DayTimes::Night.name) 
    end
    pnml_proceed(env)
  end
  pnml_activate_context(self.name)
end
