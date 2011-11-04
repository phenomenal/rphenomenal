class OperatingSystems::Ios < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :display_os) do 
      image_tag("contexts/operating_systems/ios.png","data-caption"=>"Your OS is iOS")
    end
  end
end
