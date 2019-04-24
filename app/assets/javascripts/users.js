//
$(function() {
      $(".js-yoga-classes").on('click', function(){
           let id = $(this).data("id");
           $.getJSON("/users/" + id + "/yoga_classes", function(data) {
               let collection = data.map(function(yoga_class){
                 return (
                  "<strong>" + yoga_class["title"] + "</strong>" +
                  "<p>" + yoga_class["class_plan"] + "</p>" +
                      "<p>" + yoga_class["comments"].map(function(comment){
                        return ("<p>" +
                          comment["content"] + "</p>")
                        }).join('') + "</p>"
                 )
               }).join('')
                $("#user-yoga-classes-" + id).append(collection)
           });
      });
});
