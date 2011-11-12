class PagesController < ApplicationController
  def home
    @title="Welcome on phenomenal-gem.com"
    # fetching a single feed
    feed = Feedzirra::Feed.fetch_and_parse("http://redmine.phenomenal-gem.com/projects/phenomenal/repository/revisions.atom?key=5769b0cc85a55d8dbed695fff0068ebcb78582be")
    entry = feed.entries.first
    @commit_phenomenal="#{entry.title} - #{entry.published} - #{entry.author}"
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
