module PagesHelper
  
  def display_browser
     "Unknown browser"
  end
  
  def display_os
    "Unknown os"
  end
  
  def display_hour
    "Unknown hour"
  end
  
  def display_location
    image_tag("contexts/locations/unknown_country.png")
  end
  
  def phenomenal_color(r, g, b)
    "\##{to_hex_string(r)}#{to_hex_string(g)}#{to_hex_string(b)}"
  end
  
  def display_phenomenal_use_diagram
    image_tag("project/phenomenal_use_diagram.png")
  end
end
