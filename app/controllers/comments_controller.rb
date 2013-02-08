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
	@comment = Comment.find(params[:id])
  end

  def create
	@comment = Comment.new(params[:comment])
	if @comment.save
		redirect_to @comment
	else
		render :edit
	end
  end

  def update
	@comment = Comment.find(params[:id])
	if @comment.update_attributes(params[:comment])
		redirect_to @comment
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
