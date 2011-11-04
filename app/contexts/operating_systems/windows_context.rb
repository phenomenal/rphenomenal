class OperatingSystems::WindowsContext 
  def self.define
    pnml_define_context(:windows) 
    pnml_add_adaptation(:windows, PagesHelper, :display_os) do 
      image_tag("contexts/operating_systems/windows.png","data-caption"=>"Your OS is windows")
    end
  end
end
