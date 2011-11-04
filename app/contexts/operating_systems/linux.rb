class OperatingSystems::Linux < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :display_os) do 
      image_tag("contexts/operating_systems/linux.png","data-caption"=>"Your OS is linux")
    end
  end
end
