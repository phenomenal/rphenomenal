class OperatingSystems::MacosContext 
  def self.define
    pnml_define_context(:macos) 
    pnml_add_adaptation(:macos, PagesHelper, :display_os) do 
      image_tag("contexts/operating_systems/macos.png","data-caption"=>"Your OS is Mac")
    end
  end
end
