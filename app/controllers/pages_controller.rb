class PagesController < ApplicationController
  def home
    @title="Welcome on phenomenal-gem.com"
    # fetching phenomenal commit
    feed = Feedzirra::Feed.fetch_and_parse("http://redmine.phenomenal-gem.com/projects/phenomenal/repository/revisions.atom?key=5769b0cc85a55d8dbed695fff0068ebcb78582be")
    entry = feed.entries.first
    @commit_phenomenal="#{entry.title} <br/> #{l entry.published}"
    # fetching phenomenal-rails commit 
    feed = Feedzirra::Feed.fetch_and_parse("http://redmine.phenomenal-gem.com/projects/phenomenal-rails/repository/revisions.atom?key=5769b0cc85a55d8dbed695fff0068ebcb78582be")
    entry = feed.entries.first
    @commit_phenomenal_rails="#{entry.title} <br/> #{l entry.published}"
  end
  
  def project
    @title="Project implementation"
  end
  
  def documentation
    @title="Documentation"
    #TODO
  end
  
  def context
    phen_graphical_view("#{Rails.root}/public/your_context.png")
    @title="Defined contexts"
  end
end
