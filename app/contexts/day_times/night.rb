class DayTimes::Night < Phenomenal::Declaration 
  def self.define
    pnml_def(PagesHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(0,0,0)
    end
    
    pnml_def(PagesHelper, :display_hour) do 
      asset_path("contexts/day_times/night.png")
    end
  end
end
