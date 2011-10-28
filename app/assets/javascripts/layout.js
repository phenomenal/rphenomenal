function slide(i){
  var elems = $('#presenter .context_presenter');
  var next= elems[i];  
  i=(i+1)%(elems.length);
  $('#presenter').scrollTo(next, 800);
  setTimeout("slide("+i+")",4000);
}
$(document).ready(function() {
  $('#presenter .context_presenter').each(function(index, elem){
    var content= $(elem).children("img").data("caption");
    $(elem).children(".caption").html(content);
  });
  slide(0);
})
