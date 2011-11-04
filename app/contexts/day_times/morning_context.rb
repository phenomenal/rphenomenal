class DayTimes::MorningContext 
  def self.define
    pnml_define_context(:morning)
    pnml_add_adaptation(:morning, PagesHelper, :phenomenal_color) do |r,g,b|
      k = 1.40
      pnml_proceed((r*k).to_i,(g*k).to_i,(b*k).to_i)
    end
    
    pnml_add_adaptation(:morning, PagesHelper, :display_hour) do 
      image_tag("contexts/day_times/morning.jpeg", "data-caption"=>"We are in the morning")
    end
  end
end
