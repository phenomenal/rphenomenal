class PagesController < ApplicationController
  def home
    @title="Welcome on phenomenal-gem.com"
    g = Git.open ('.')
    c = g.log.first
    @commit ="#{l c.date} - #{c.author.name} - #{c.message}"
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
