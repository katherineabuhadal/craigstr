class PostsController < ApplicationController
  def new
    @post = Post.new
    @category = Category.find(params[:category_id])
  end

  def index
    @posts = Post.all
  end

  def show
    @post = current_user.posts.find(params[:id])
  end

  def create
    category = Category.find(params[:category_id])
    post = current_user.posts.create(post_params.merge(category_id: category.id))
    redirect_to category
  end

  private

  def post_params
    params.require(:post).permit(
      :title, 
      :body,
      :category_id,
    )
  end
end
