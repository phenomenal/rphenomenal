class Browsers::FirefoxContext 
  def self.define
    pnml_define_context(:firefox)  
    
    pnml_add_adaptation(:firefox, PagesHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r+50,g,b-100)
    end
    
    pnml_add_adaptation(:firefox, PagesHelper, :display_browser) do 
      image_tag("contexts/browsers/firefox.png", "data-caption"=>"Your browser is firefox")
    end
    
    pnml_add_adaptation(:firefox, PagesHelper, :display_phenomenal_use_diagram) do
      image_tag("project/phenomenal_use_diagram.svg")
    end
  end
end
