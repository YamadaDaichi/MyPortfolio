class CommentsController < ApplicationController
  def create
    rating = Rating.find(params[:rating_id])
    comment = current_user.comments.new(comment_params)
    comment.rating_id = rating.id
    comment.save
    redirect_to rating_path(rating)
  end

  def destroy
    Comment.find_by(id: params[:id]).destroy
    redirect_to rating_path(params[:rating_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
