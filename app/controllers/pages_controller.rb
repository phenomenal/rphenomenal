class PagesController < ApplicationController
  def home
    @title="Welcome on phenomenal-gem.com"
    @applicationState=ApplicationState.load(cookies)
    puts @applicationState.features.class
  end
  
  def project
    #TODO
  end
  
  def documentation
    #TODO
  end
  
  def introspection
    phen_graphical_view("#{Rails.root}/public/your_context.png")
    #TODO
  end
end
