ActionDispatch::Callbacks.before do
  
  pnml_defined_contexts.each do |context|
    if context != pnml_default_context || !Rails.configuration.cache_classes
      while pnml_context_active?(context) do
        pnml_deactivate_context(context) 
      end
    end
    # Fix problem without page caching
    if !Rails.configuration.cache_classes
      pnml_forget_context(context)
    end
  end
  
  if !Rails.configuration.cache_classes
    Browsers::Browsers
    Browsers::Chrome
    Browsers::Firefox
    Browsers::InternetExplorer
    Browsers::Safari

    DayTimes::DayTimes
    DayTimes::Morning
    DayTimes::Afternoon
    DayTimes::Evening
    DayTimes::Night

    Locations::Locations
    Locations::Belgium
    Locations::UnknownCountry

    OperatingSystems::OperatingSystems
    OperatingSystems::Linux
    OperatingSystems::Macos
    OperatingSystems::Windows
    OperatingSystems::Android
    OperatingSystems::Ios
  else
    pnml_activate_context("Browsers::Browsers")
    pnml_activate_context("DayTimes::DayTimes")
    pnml_activate_context("Locations::Locations")
    pnml_activate_context("OperatingSystems::OperatingSystems")
    
  end
end

# Initialization of the contexts
PhenomenalInitializer.init
