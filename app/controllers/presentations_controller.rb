class PresentationsController < ApplicationController
  layout "presentation"

  def thesis
    @title="Thesis presentation"
  end
end
