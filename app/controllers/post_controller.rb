class PostController < ApplicationController

   def index
   	@posts = Post.all
   end

   def chatter
   	@post = Post.new
   end

  def chatter_post
  	@post = Post.new(post_params)
  	if @post.save
       redirect_to chatter_path
    else
       redirect_to @post, notice: 'There was an error creating posts.'
    end
  end

  def chitter
    @post = Post.find(params[:post])
    @comment = Comment.new
  end

  def new_comment
    @id = params[:post_id]
    @post = Post.find(@id)
    @post.comments << Comment.new(params.require(:comment).permit(:author, :comment))
    if @post.save
      redirect_to chitter_path(:post => @id)
    end
  end





end