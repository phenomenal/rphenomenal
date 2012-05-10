feature :OperatingSystemsSense do
  context :Android do

    # In combination with the analyser feature
    feature :Analyser do
      adaptations_for PagesHelper
      adapt :phenomenal_contexts_images do 
        proceed.push asset_path("contexts/operating_systems/android.png")
      end
    end
  end
end
