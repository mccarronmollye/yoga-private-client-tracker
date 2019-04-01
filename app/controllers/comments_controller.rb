class CommentsController < ApplicationController
before_action :authenticate_user!

  def create
    @comment = current_user.comments.build(comment_params)
    #binding.pry
    if @comment.save
      respond_to do |f|
        f.json {render :json => @comment}
        f.html {redirect_to @comment.yoga_class}
      end
    else
        redirect_to request.referrer
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :yoga_class_id)
  end
end
