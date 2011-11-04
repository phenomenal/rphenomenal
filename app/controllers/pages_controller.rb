class PagesController < ApplicationController
  def home
    @title="Welcome on phenomenal-gem.com"
  end
  
  def project
    @title="Project Presentation"
  end
  
  def documentation
    @title="Documentation"
    #TODO
  end
  
  def context
    @title="Running contexts"
  end
end
