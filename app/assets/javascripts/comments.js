function Comment(attributes){
    this.content = attributes.content;
    this.id = attributes.id;
    this.user = attributes.user
}

Comment.prototype.render = function(){
 return `<div>
     <strong> ${this.user.first_name} ${this.user.last_name} said </strong>
     <br>
     <p>${this.content}</p>
   </div>`
}

$(function(){
  $("form#new_comment").on("submit", function(e){
    e.preventDefault()
    let $form = $(this);
    let action = $form.attr("action") //The .attr() method gets the attribute value for only the first element in the matched set. In this case, the form's action is "/comments"
    let commentC = $form.serialize()

    $.ajax({
      url: action,
      data: commentC,
      dataType: "json",
      method: "POST"
     })
    .success(function(json){
      let comment = new Comment(json);
      let commentDisplay = comment.render()

      $(".comment-content").append(commentDisplay)

      document.getElementById("new_comment").reset();
      document.getElementsByTagName("input").disabled = true;
    })
    .error(function(response){
      console.log("Awe. an error!", response)
    })
  })
})
