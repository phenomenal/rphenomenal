module PagesHelper
  
  def phenomenal_color(r, g, b)
    "\##{to_hex_string(r)}#{to_hex_string(g)}#{to_hex_string(b)}"
  end
  
  def display_phenomenal_use_diagram
    image_tag("project/phenomenal_use_diagram.png")
  end
  
  def phenomenal_contexts_images
    []
  end
end
