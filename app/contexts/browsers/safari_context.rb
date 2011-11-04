class Browsers::SafariContext 
  def self.define
    pnml_define_context(:safari)  
    pnml_add_adaptation(:safari, PagesHelper, :phenomenal_color) do |red,green,blue|
      k=100
      pnml_proceed(red+75,green-50,blue-50)
    end
    
    pnml_add_adaptation(:safari, PagesHelper, :display_browser) do 
      image_tag("contexts/browsers/safari.png","data-caption"=>"Your browser is safari")
    end
  end
end
