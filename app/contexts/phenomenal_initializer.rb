class PhenomenalInitializer
  
  def self.init
    # Define conflict resolution policy
    pnml_change_conflict_policy { |a,b| age_conflict_policy(a,b) }  
    
    # Define the contexts
    self.define_contexts()
  end
  
  # Context definition
  def self.define_contexts()
    Browsers::Chrome.define
    Browsers::Firefox.define
    Browsers::InternetExplorer.define
    Browsers::Safari.define
    
    DayTimes::Morning.define
    DayTimes::Afternoon.define
    DayTimes::Evening.define
    DayTimes::Night.define
    
    Locations::Belgium.define
    Locations::UnknownCountry.define
    
    OperatingSystems::Linux.define
    OperatingSystems::Macos.define
    OperatingSystems::Windows.define
    OperatingSystems::Android.define
    OperatingSystems::Ios.define
  end
end
