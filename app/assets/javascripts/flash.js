var myMessages = ['info','warning','error','success'];

function showMessage(type){
  $('.'+ type +'-trigger').click(function(){
    $('.'+type).animate({top:"0"}, 500);
  });
}

$(document).ready(function(){
  // Show message
  for(var i=0;i<myMessages.length;i++){
    showMessage(myMessages[i]);
  }

  // When message is clicked, hide it
  $('.message').click(function(){
    $(this).animate({top: -($(this).outerHeight() + 100)}, 500);
  });            
});
