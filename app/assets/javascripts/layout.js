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
  
  $('textarea').tinymce({
  // Location of TinyMCE script
    plugins : 'cesam', // - tells TinyMCE to skip the loading of the plugin
    mode : "textareas",
    theme : "advanced",
    theme_advanced_buttons1 : "bold,italic,underline,forecolor,separator,strikethrough,justifyleft,justifycenter,justifyright,justifyfull,bullist,numlist,undo,redo,link,unlink,separator,uservars",
    theme_advanced_buttons2 : "",
    theme_advanced_buttons3 : "",
    theme_advanced_toolbar_location : "top",
    theme_advanced_toolbar_align : "left",
    theme_advanced_statusbar_location : "bottom"
  });
})

