class DayTimes::AfternoonContext 
  def self.define
    pnml_define_context(:afternoon)
    pnml_add_adaptation(:afternoon, PagesHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r,g,b)
    end
    
    pnml_add_adaptation(:afternoon, PagesHelper, :display_hour) do 
      image_tag("contexts/day_times/afternoon.jpg","data-caption"=>"We are in the after noon")
    end
  end
end
