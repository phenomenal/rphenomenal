class Phenomenal::Middleware
  def initialize(app)
    @app=app
  end
  
  def call(env)
   Phenomenal::Middleware.activation_handler(env)
    @app.call(env)
  end
  #TODO WHY CLASS ????
  def self.activation_handler(env)
 end
end
