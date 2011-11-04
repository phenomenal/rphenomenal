class OperatingSystems::Macos < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :display_os) do 
      image_tag("contexts/operating_systems/macos.png","data-caption"=>"Your OS is Mac")
    end
  end
end
