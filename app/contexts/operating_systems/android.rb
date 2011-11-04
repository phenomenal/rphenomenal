class OperatingSystems::Android < Phenomenal::Declaration
  def self.define
    pnml_def(PagesHelper, :display_os) do 
     image_tag("contexts/operating_systems/android.png","data-caption"=>"Your OS is android")
    end
  end
end
