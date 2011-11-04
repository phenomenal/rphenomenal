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
  # Fix problem without page caching
  if !Rails.configuration.cache_classes
    PhenomenalInitializer.define_contexts
  end
end

# Initialization of the contexts
PhenomenalInitializer.init
