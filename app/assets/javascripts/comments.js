//function Comment(attributes){
//  this.content = attributes.content;
//  this.id = attributes.id;
//}

//Comment.prototype.renderP = function(){

//}

$(function(){
  $("form#new_comment").on("submit", function(e){
    e.preventDefault()
      let $form = $(this);
      let action = $form.attr("action")
      let params = $form.serialize()

      $.ajax({
        url: action,
        data: params,
        dataType: "json",
        method: "POST"
     })
//    $.post(action, params)
      .success(function(json){

//        let comment = new Comment(json);
//        let commentP = comment.renderP()

  //      $("p.comment-content").append(commentP)
        console.log(json)
      })
      .error(function(response){
        console.log("Awe. an error!", response)
      })
  })
})
