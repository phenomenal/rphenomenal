class Browsers::ChromeContext 
  def self.define
    pnml_define_context(:chrome) 
    pnml_add_adaptation(:chrome, PagesHelper, :phenomenal_color) do |r,g,b|
      pnml_proceed(r+50,g+50,b-75)
    end
    
    pnml_add_adaptation(:chrome, PagesHelper, :display_browser) do 
      image_tag("contexts/browsers/chrome.png", "data-caption"=>"Your browser is chrome")
    end
  end
end
