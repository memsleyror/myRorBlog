class CommentsController < ApplicationController
  def index
  	@comments = Comment.all
  end

  def show
  	@comment = Comment.find(params[:id])
  end

  def new
  	@comment = Comment.new
  end

  def edit
	@post = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
  end

  # /posts/4/comments
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(params[:comment])
  	@comment.user_id = current_user.id
  	# @post = Post.find(params[:post_id])
	# @comment = Comment.new(params[:comment])
	if @comment.save
		redirect_to @post
	else
		render :edit
	end
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
	  #@comment = Comment.find(params[:id])
	if @comment.update_attributes(params[:comment])
		redirect_to @post
	else
		render :edit
	end
  end

  def destroy
	@comment = Comment.find(params[:id])
	post = @comment.post
	if @comment.destroy
		redirect_to post
	else
		flash[:error] = "Error deleting comment"
		redirect_to @comment
	end
  end


end
