class Phenomenal::Middelware
  def initialize(app)
    @app=app
  end
  
  def call(env)
   Phenomenal::Middelware.activation_handler(env)
    @app.call(env)
  end
  #TODO WHY CLASS ????
  def self.activation_handler(env)
 end
end
