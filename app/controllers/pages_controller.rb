class PagesController < ApplicationController
  def home
    @title="Home"
    @applicationState=ApplicationState.load(cookies)
    puts @applicationState.features.class
  end
  
  def project
    @title="Project"
    #TODO
  end
  
  def documentation
    @title="Documentation"
    #TODO
  end
  
  def introspection
    @title="Introspection"
    phen_graphical_view("#{Rails.root}/public/your_context.png")
    #TODO
  end
end
