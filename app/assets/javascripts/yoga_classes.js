$(function() {
    $(".js-more").on('click', function(){
        let id = $(this).data("id");
        $.get("/yoga_classes/" + id + "/body", function(data) {
        $("#body-" + id).text(data);
      });
     });
  });


  // $(function(){
  //   $("a.yoga_classes").on("click", function(e){
  //     e.preventDefault();
  //     $.get(this.href).success(function(json){
  //     json.forEach(function(yogaClass){
  //     $(".listed_yoga_classes").append("<h3>" + yogaClass.title + "</h3>")
  //       })
  //     })
  //   })
  // })
