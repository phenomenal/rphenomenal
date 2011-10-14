module ApplicationHelper
  def title
    base_title = "Phenomenal Gem"
    if @title
      "#{base_title} | #{@title}"
    else
      base_title
    end
  end
  
  def phenomenal_color(tmp)
    puts "--- CALLED"
    "#fff"
  end
end
