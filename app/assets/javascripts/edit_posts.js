$(document).ready(function() {
  $("#edit-button").click(function(event){
    $(".edit_post").show();
    return false;
  });

  $("#post-response").click(function(event){
    event.preventDefault();
    $(".new_mail_response").show();
  });
});
