class OperatingSystems::IosContext 
  def self.define
    pnml_define_context(:ios) 
    pnml_add_adaptation(:ios, PagesHelper, :display_os) do 
      image_tag("contexts/operating_systems/ios.png","data-caption"=>"Your OS is iOS")
    end
  end
end
