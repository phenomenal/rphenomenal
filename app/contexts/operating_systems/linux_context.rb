class OperatingSystems::LinuxContext 
  def self.define
    pnml_define_context(:linux) 
    pnml_add_adaptation(:linux, PagesHelper, :display_os) do 
      image_tag("contexts/operating_systems/linux.png","data-caption"=>"Your OS is linux")
    end
  end
end
