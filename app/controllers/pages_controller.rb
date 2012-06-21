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
  end
end
