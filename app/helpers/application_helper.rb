module ApplicationHelper
  def self.included(klass)
    puts("%%%%%%%%%%% #{klass.ancestors} $")
  end
  
  def title
    base_title = "Phenomenal Gem"
    if @title
      "#{base_title} | #{@title}"
    else
      base_title
    end
  end
  
  def phenomenal_color
    logger.debug("@@@@@@@@@@@@@@@@ #{self.class.ancestors}")
    "#fff"
  end
end
