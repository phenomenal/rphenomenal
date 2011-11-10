class PagesController < ApplicationController
  def home
    @title="Welcome on phenomenal-gem.com"
    if Rails.env.production? 
      g = Git.open ('/var/www/rphenomenal')
      c = g.log.first
      @commit ="#{l c.date} - #{c.author.name} - #{c.message}"
    else
      @commit = "Last commit dev mode"
    end
  end
  
  def project
    @title="Project implementation"
  end
  
  def documentation
    @title="Documentation"
    #TODO
  end
  
  def context
    @title="Running contexts"
  end
end
