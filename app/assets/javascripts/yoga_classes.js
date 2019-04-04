$(function() {
    $(".js-more").on('click', function(){
        let id = $(this).data("id");
        $.getJSON("/yoga_classes/" + id + "/yoga_class_data", function(data) {
        $("#body-" + id).html(data["class plan"]);
      });
     });
  });

  // $(function () {
  //   $(".js-next").on("click", function() {
  //     var nextId = parseInt($(".js-next").attr("data-id")) + 1;
  //     $.getJSON("/yoga_classes/" + nextId + "/yoga_class_data", function(data) {
  //       $(".yogaClassTitle").text(data["title"]);
  //       $(".yogaClassClassPlan").text(data["class plan"]);
  //       // re-set the id to current on the link
  //       $(".js-next").attr("data-id", data["id"]);
  //     });
  //   });
  // });


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
