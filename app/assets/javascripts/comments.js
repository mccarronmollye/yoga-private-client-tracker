function Comment(attributes){
    this.content = attributes.content;
    this.id = attributes.id;
    this.user = attributes.user
}

Comment.prototype.renderP = function(){
 return `<div>
     <strong> ${this.user.email} said </strong>
     <br>
     <p class="comment-content">${this.content}</p>
   </div>`
}

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


        let comment = new Comment(json);
        let commentP = comment.renderP()

       $(".comment-content").append(commentP)
        console.log(json)
        document.getElementById("new_comment").reset();
        document.getElementsByTagName("input").disabled = true;
      })
      .error(function(response){
        console.log("Awe. an error!", response)
      })
  })
})
