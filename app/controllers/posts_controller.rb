class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index
  end

  def show
    @post = Post.find(params[:id])
    render :show

    if params[:like]
      @post.likes += 1
      @post.save
    end
  end

  def new
    @post = Post.new
    @bloggers = Blogger.all
    @destinations = Destination.all
    render :new
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:blogger_id, :destination_id, :title, :content)
  end



end
