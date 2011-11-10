class DayTimes::Morning < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :phenomenal_color) do |r,g,b|
      k = 1.40
      pnml_proceed((r*k).to_i,(g*k).to_i,(b*k).to_i)
    end
    
    pnml_def(PagesHelper, :display_hour) do 
      asset_path("contexts/day_times/morning.jpg")
    end
  end
end
