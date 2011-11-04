class PhenomenalInitializer
  
  def self.init
    # Define conflict resolution policy
    pnml_change_conflict_policy { |a,b| age_conflict_policy(a,b) }  
    
    # Define the contexts
    self.define_contexts()
  end
  
  # Context definition
  def self.define_contexts()
    Browsers::ChromeContext.define
    Browsers::FirefoxContext.define
    Browsers::InternetExplorerContext.define
    Browsers::SafariContext.define
    
    DayTimes::MorningContext.define
    DayTimes::AfternoonContext.define
    DayTimes::EveningContext.define
    DayTimes::NightContext.define
    
    Locations::BelgiumContext.define
    Locations::UnknownCountryContext.define
    
    OperatingSystems::Linux.define
    OperatingSystems::Macos.define
    OperatingSystems::Windows.define
    OperatingSystems::Android.define
    OperatingSystems::Ios.define
  end
end
