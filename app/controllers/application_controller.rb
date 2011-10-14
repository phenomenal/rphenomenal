class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :activate_contexts
  
  private
  def activate_contexts
      pnml_deactivate_all_contexts if Rails.env == "development"
      pnml_activate_context(:hour)
  end
end
