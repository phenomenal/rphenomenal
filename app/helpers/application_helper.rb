module ApplicationHelper
  def title
    base_title = "Phenomenal Gem"
    if @title
      "#{base_title} | #{@title}"
    else
      base_title
    end
  end
  
  def to_hex_string(color)
    color = 255 if color>255
    color = 0 if color<0
    ret = color.to_s(16)
    ret = "0#{color}" if ret.size==1
    ret
  end
end
