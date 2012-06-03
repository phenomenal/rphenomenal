class PagesController < ApplicationController
  def home
    @title="Home"
    @applicationState=ApplicationState.load(cookies)
    puts @applicationState.features.class
  end
  
  def project
    @title="Project Description"
    #TODO
  end
  
  def api
    @title="Application Programming Interface"
    #TODO
  end
  
  def introspection
    @title="Introspection"
    #phen_graphical_view("#{Rails.root}/public/your_context.png")
    #TODO
  end
end
