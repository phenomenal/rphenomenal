ActionDispatch::Callbacks.before do
  
  pnml_defined_contexts.each do |context|
    if !context.persistent || !Rails.configuration.cache_classes
      while pnml_context_active?(context) do
        pnml_deactivate_context(context) 
      end
      # Fix problem without page caching
      if !Rails.configuration.cache_classes
        pnml_forget_context(context)
      end
    end
    
  end
  
  if !Rails.configuration.cache_classes
    def load_dir(path)
      if Dir.exist? path
        Dir.entries(path).each do |entry|
          if entry!="." && entry !=".."
            filepath=File.join(path,entry)
            if File.file?(filepath)
              load filepath
            else
              load_dir(filepath)
            end
          end
        end
      end
    end
    load_dir("#{Rails.root}/app/contexts")
  end
end

# Initialization of the contexts
PhenomenalInitializer.init
