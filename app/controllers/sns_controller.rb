class SnsController < ApplicationController
  before_action :authenticate_user!
  def main
    @comments = Comment.all
  end

  def create
    new_comment = Comment.new
    new_comment.comment = params[:content]
    new_comment.user_id = current_user.id
    new_comment.save
    redirect_to "/sns/main"
  end

  def destroy
  @one_comment = Comment.find(params[:comment_id])
  @one_comment.destroy
  redirect_to "/sns/main"
  end

  def edit
  end

  def update
  end
end
