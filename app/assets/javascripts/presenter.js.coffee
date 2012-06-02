slide = (i) ->
  elems = $('#presenter .context_presenter')
  next= elems[i]
  i=(i+1)%(elems.length)
  $('#presenter').scrollTo(next, 800)
  setTimeout("slide("+i+")",4000)
  
$(document).ready ->
  $('#presenter .context_presenter').each((index, elem)->
    content= $(elem).children("img").data("caption")
    $(elem).children(".caption").html(content)
  )
  slide(0)

