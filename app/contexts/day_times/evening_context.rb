class DayTimes::EveningContext 
  def self.define
    pnml_define_context(:evening)
    pnml_add_adaptation(:evening, PagesHelper, :phenomenal_color) do |r,g,b|
      k = 1.40
      pnml_proceed((r/k).to_i,(g/k).to_i,(b/k).to_i)
    end
    
    pnml_add_adaptation(:evening, PagesHelper, :display_hour) do 
      image_tag("contexts/day_times/evening.jpg","data-caption"=>"We are in the evening")
    end
  end
end
