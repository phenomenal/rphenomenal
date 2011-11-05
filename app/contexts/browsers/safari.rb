class Browsers::Safari < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :phenomenal_color) do |red,green,blue|
      k=100
      pnml_proceed(red+75,green-10,blue-50)
    end
    
    pnml_def(PagesHelper, :display_browser) do 
      image_tag("contexts/browsers/safari.png","data-caption"=>"Your browser is safari")
    end
  end
end
