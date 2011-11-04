class DayTimes::NightContext 
  def self.define
    pnml_define_context(:night)
    pnml_add_adaptation(:night, PagesHelper, :phenomenal_color) do |r,g,b|
      k = 0.2
      pnml_proceed((r*k).to_i,(g*k).to_i,(b*k).to_i)
    end
    
    pnml_add_adaptation(:night, PagesHelper, :display_hour) do 
      image_tag("contexts/day_times/night.jpeg", "data-caption"=>"We are in the night")
    end
  end
end
