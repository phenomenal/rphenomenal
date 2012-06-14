class ApplicationState
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  attr_accessor :features
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
    self.features=[]
  end
  
  def persisted?
    false
  end
  
  def save(cookies)
    cookies[:phenomenal] = { 
      :value => Marshal.dump(self), 
      :expires => 4.years.from_now
    }
  end
  
  def self.load(cookies)
    if cookies[:phenomenal]
      Marshal.load(cookies[:phenomenal])
    else
      state=ApplicationState.new
      puts state.features
      state.save(cookies)
      state
    end
  end
end