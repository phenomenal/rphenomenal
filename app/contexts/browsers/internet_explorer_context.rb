class Browsers::InternetExplorerContext 
  def self.define
    pnml_define_context(:internetexplorer)  
    
    pnml_add_adaptation(:internetexplorer, PagesHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r,g,b+25)
    end
    
    pnml_add_adaptation(:internetexplorer, PagesHelper, :display_browser) do 
      image_tag("contexts/browsers/ie.png", "data-caption"=>"Your browser is MS IE")
    end
  end
end
