class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :activate_contexts
  
  private
  def activate_contexts
      
      pnml_deactivate_all_contexts
      puts "--- DEACTIVATE #{pnml_context_informations(:hour)}"      
      if params[:test]
       
        pnml_activate_context(:hour)
         puts "--- ACTIVATE #{pnml_context_informations(:hour)}"
      end
  end
end
