class DayTimes::Afternoon < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r,g,b)
    end
    
    pnml_def(PagesHelper, :display_hour) do 
      asset_path("contexts/day_times/afternoon.png")
    end
  end
end
