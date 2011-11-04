class OperatingSystems::AndroidContext
  def self.define
    pnml_define_context(:android) 
    pnml_add_adaptation(:android, PagesHelper, :display_os) do 
     image_tag("contexts/operating_systems/android.png","data-caption"=>"Your OS is android")
    end
  end
end
