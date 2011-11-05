class Browsers::InternetExplorer < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r,g,b+25)
    end
    
    pnml_def(PagesHelper, :display_browser) do 
      image_tag("contexts/browsers/ie.png", "data-caption"=>"Your browser is MS IE")
    end
  end
end
