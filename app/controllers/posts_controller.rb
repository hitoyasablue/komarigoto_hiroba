class PostsController < ApplicationController
  include SessionsHelper
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:show, :index, :edit, :create, :destroy]

  def index
    @posts = Post.all.order(id: 'DESC').page(params[:page]).per(10)
    @like = Like.new(user_id: current_user.id)
  end

  def show
    @user = Post.find_by(id: params[:id]).user
    @like = Like.new(user_id: current_user.id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:success] = '投稿しました'
      redirect_to posts_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post.update(post_params)
      flash[:success] = '投稿を更新しました'
      redirect_to posts_url
    else
      render 'edit'
    end
  end

  def destroy
    Post.find_by(id: params[:id]).destroy
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
