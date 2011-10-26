module ApplicationHelper
  def title
    base_title = "Phenomenal Gem"
    if @title
      "#{base_title} | #{@title}"
    else
      base_title
    end
  end
  
  def display_browser
    puts "$$$$$$$$$$$$$$$$$$"
    image_tag "browser.jpg"
  end
  
  def phenomenal_color(r, g, b)
    "\##{to_hex_string(r)}#{to_hex_string(g)}#{to_hex_string(b)}"
  end
  
  def to_hex_string(color)
    color = 255 if color>255
    color = 0 if color<0
    ret = color.to_s(16)
    ret = "0#{color}" if ret.size==1
    ret
  end
end
