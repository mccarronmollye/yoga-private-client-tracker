$(function(){
  $("a.clients").on("click", function(e){
    e.preventDefault();

    $.get(this.href).success(function(json){


      json.forEach(function(client){
        $(".listed_clients").append("<h3>" + client.org_name + "</h3><li>" + client.point_of_contact + "</li><li>" + client.email + "</li><br>")
      })
    })
  })
})
