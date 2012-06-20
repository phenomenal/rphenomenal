module PresentationHelper
  def pygments(file,lexer=:ruby)
    raw Pygments.highlight(File.read("#{Rails.root}/#{file}"), :lexer=>lexer)
  end

#  def pygments_inline(content,lexer=:ruby)
#   raw Pygments.highlight(content), :lexer=>lexer).gsub(/<\/*pre>/,"").gsub(/<div class="highlight">/,"<span class=\"highlight\">").gsub(/<\/div>/,"")
#  end
end
