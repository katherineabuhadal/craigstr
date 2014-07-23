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
      $("#errors").append("<li>Error has occured! Could not save post</li>");
    });
    $("#post_title, #post_body").val("");
    return false;
  });
});
