require 'phenomenal'

class PagesHelper
  def phenomenal_color(r,g,b)
  end
end
context :Windows
load ARGV[0]
phen_graphical_view("graphical_views/#{ARGV[0]}.png")