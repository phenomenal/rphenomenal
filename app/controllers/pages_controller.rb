class PagesController < ApplicationController
  def home
    @title="Welcome on phenomenal-gem.com"
    # fetching a single feed
    feed = Feedzirra::Feed.fetch_and_parse("http://redmine.phenomenal-gem.com/projects/phenomenal/repository/revisions.atom?key=5769b0cc85a55d8dbed695fff0068ebcb78582be")

    entry = feed.entries.first
    entry.title      # => "Ruby Http Client Library Performance"
    entry.url        # => "http://www.pauldix.net/2009/01/ruby-http-client-library-performance.html"
    entry.author     # => "Paul Dix"
    entry.summary    # => "..."
    entry.content    # => "..."
    entry.published  # => Thu Jan 29 17:00:19 UTC 2009 # it's a Time object
    entry.categories # => ["...", "..."]
    @commit ="#{entry.title} - #{entry.published} - #{entry.author}"
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
