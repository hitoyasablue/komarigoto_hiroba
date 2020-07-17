class PostsController < ApplicationController
  include SessionsHelper
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:create, :destroy]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @user = Post.find_by(id: params[:id]).user
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:success] = '投稿しました'
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    @post.update!(post_params)
    flash[:success] = '投稿を更新しました'
    redirect_to posts_url
  end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = '投稿を削除しました'
    redirect_to posts_url
  end

  private

    def post_params
      params.require(:post).permit(:content)
    end

    def set_post
      @post = Post.find_by(id: params[:id])
    end
end
