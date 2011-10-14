class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :activate_contexts
  
  private
  def activate_contexts
#    logger.debug("DEAACT----------------")
#    pnml_deactivate_context(:hour)
#    pnml_deactivate_context(:date)
#    pnml_deactivate_context(:user_agent)
#    pnml_deactivate_context(:geo_ip)
      logger.debug("***************************************")
      pnml_activate_context(:hour)
  end
end
