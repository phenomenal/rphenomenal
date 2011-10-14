# Fix problem without page caching
ActionDispatch::Callbacks.before do
  if !Rails.configuration.cache_classes
    pnml_defined_contexts.each do |name|
      while pnml_context_active?(name) do
        pnml_deactivate_context(name)
      end
      pnml_forget_context(name)
    end
    define_contexts
  end
end

# Context definition
def define_contexts()
  pnml_define_context(:hour)
  pnml_add_adaptation(:hour, ApplicationHelper, :phenomenal_color) do
    "red"
  end

  pnml_define_context(:date)
  pnml_add_adaptation(:date, ApplicationHelper, :phenomenal_color) do
    "green"
  end

  pnml_define_context(:user_agent)  
  pnml_add_adaptation(:user_agent, ApplicationHelper, :phenomenal_color) do
    "blue"
  end

  pnml_define_context(:geo_ip)
  pnml_add_adaptation(:geo_ip, ApplicationHelper, :phenomenal_color) do
    "yellow"
  end
end

# Run initial context definition
define_contexts