class CommentsController < ApplicationController
  def index
    if params[:authored]
      render json: User.find(params[:user_id]).authored_comments
      return
    elsif params[:user_id]
      type = 'user'
      id = params[:user_id]
    elsif params[:contact_id]
      type = 'contact'
      id = params[:contact_id]
    else
      render json: Comment.all
      return
    end
    @comments = Comment.where(commentable_id: id, commentable_type: type)

    render json: @comments
  end

  def create
    @comment = Comment.new(comments_params)
    if @comment.save
      render json: @comment
    else
      render(
        json: @comment.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render json: @comment
  end

  private

  def comments_params
    params.require(:comment).permit(:author_id, :body, :commentable_id,
                                    :commentable_type)
  end
end
