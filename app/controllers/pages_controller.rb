class PagesController < ApplicationController
  def home
    @title="Home"
    @applicationState=ApplicationState.load(cookies)
  end

  def project
    @title="Project Description"
  end

  def api
    @title="Application Programming Interface"
  end

  def introspection
    @title="Introspection"
    phen_graphical_view("#{Rails.root}/public/your_context.png")
  end
end
