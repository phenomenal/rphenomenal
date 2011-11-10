class PagesController < ApplicationController
  def home
    @title="Welcome on phenomenal-gem.com"
    if Rails.env.production? 
      gr = Git.open ('/var/www/rphenomenal')
      cr = gr.log.first
      g = Git.open ('/var/www/phenomenal')
      c = g.log.first
      @commit_rphenomenal ="#{l cr.date} - #{cr.message}"
      @commit_phenomenal ="#{l c.date} - #{c.message}"
    else
      @commit_rphenomenal = "Last commit dev mode"
      @commit_phenomenal = "Last commit dev mode"
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
    @title="Defined contexts"
  end
end
