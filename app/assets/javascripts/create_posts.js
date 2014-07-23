$(document).ready(function(){

  $("#submit_post").click(function() {
    var formElement = $("#new_post");
    $.ajax({
      type: "POST",
        url: formElement.prop("action"),
        data: formElement.serialize()
    }).
    done(function (data) {
      $("#posts_list").append(data); 
    }).
    fail(function(xhr){
      alert(xhr);
    });
    $("#post_title").val("");
    $("#post_body").val("");
    return false;
  });
});
