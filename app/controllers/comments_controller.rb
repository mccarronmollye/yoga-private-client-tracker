class CommentsController < ApplicationController
before_action :authenticate_user!

  def create
    @comment = current_user.comments.build(comment_params)
    #binding.pry
    if @comment.save
        render :json => @comment.as_json(include: :user)
    else
        redirect_to request.referrer
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :yoga_class_id)
  end
end
