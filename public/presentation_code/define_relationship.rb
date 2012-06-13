feature :BrowsersSense do
  implications_for :InternetExplorer, :on=>:Windows
  context :InternetExplorer do
    implies :Windows
  end  
end
