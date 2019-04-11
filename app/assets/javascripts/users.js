//
$(function() {
      $(".js-yoga-classes").on('click', function(){
           let id = $(this).data("id");
           $.getJSON("/users/" + id + "/yoga_classes", function(data) {
               data.forEach(function(yoga_class){
     	          $("#user-yoga-classes-" + id).append(
                  "<strong>" + yoga_class["title"] + "</strong>" +
                  "<p>" + yoga_class["class_plan"] + "</p>" +
                      "<p>" + yoga_class["comments"].forEach(function(comment){
                        $("#user-yoga-classes-" + id).append("<p>" +
                          comment["content"] + "</p>")
                        }) + "</p>")
                })
           });
      });
});
