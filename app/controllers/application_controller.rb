class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :activate_contexts
  include ApplicationHelper
  private
  def activate_contexts
    pnml_activate_context(:hour) if params[:test]
  end
end
