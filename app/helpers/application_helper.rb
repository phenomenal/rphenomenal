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
    image_tag "browser.jpg"
  end
  def display_os
    "Unknown os"
  end
  def display_hour
    "Unknown hour"
  end
  def display_location
    image_tag("http://maps.googleapis.com/maps/api/staticmap?center=Belgium&zoom=0&size=500x150&maptype=roadmap&sensor=false", "data-caption"=>"You are in a foreign country")
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
