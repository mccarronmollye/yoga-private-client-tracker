$(function() {
    $(".js-more").on('click', function(){
        let id = $(this).data("id");
        $.getJSON("/yoga_classes/" + id + "/yoga_class_data", function(data) {
        $("#body-" + id).append("<p>" + data["class_plan"] + "</p><p> Created by: " + data["user"]["email"] + "</p>")
      });
    });
  });
