class OperatingSystems::Windows < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :display_os) do 
      image_tag("contexts/operating_systems/windows.png","data-caption"=>"Your OS is windows")
    end
  end
end
