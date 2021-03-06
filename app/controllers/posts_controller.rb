class PostsController < ApplicationController
  before_action :require_user

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
      if @post.save
        redirect_to '/'
      else
        render :new
    end
  end
  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post= Post.find(params[:id])
    if @post.update(post_params)
      redirect_to '/'
    else
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to users_path
  end

private

  def post_params
    params.require(:post).permit(:content)
  end
end
