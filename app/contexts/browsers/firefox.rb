class Browsers::Firefox < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r+50,g,b-100)
    end
    
    pnml_def(PagesHelper, :display_browser) do 
      image_tag("contexts/browsers/firefox.png", "data-caption"=>"Your browser is firefox")
    end
    
    pnml_def(PagesHelper, :display_phenomenal_use_diagram) do
      image_tag("project/phenomenal_use_diagram.svg")
    end
  end
end
