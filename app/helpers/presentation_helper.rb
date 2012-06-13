module PresentationHelper
  def pygments(file,lexer=:ruby)
    raw Pygments.highlight(File.read("#{Rails.root}/#{file}"), :lexer=>lexer)
  end
end
