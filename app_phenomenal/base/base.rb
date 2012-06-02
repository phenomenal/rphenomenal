feature :Base do
  is_persistent
  
  activation_condition do |env|
    if env['HTTP_ACCEPT'].to_s.include?("text/html")
      request = ActionDispatch::Request.new(env)
      applicationState=ApplicationState.load(request.cookie_jar)
      if applicationState.features
        applicationState.features.each do |f|
          activate_context f.to_sym
        end
      end
    end
  end
end