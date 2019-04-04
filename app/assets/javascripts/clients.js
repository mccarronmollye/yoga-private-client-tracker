$(function(){
  $("a.clients").on("click", function(e){
    e.preventDefault();

    $.get(this.href).success(function(json){


      json.forEach(function(client){
        $(".listed_clients").append("<h3>" + client.org_name + "</h3><p>" + client.point_of_contact + "</p><p>" + client.email + "</p><br>")
      })
    })
  })
})
