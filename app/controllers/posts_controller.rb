# frozen_string_literal: true

class PostsController < ApplicationController
  layout 'post'
  def index
    @posts = Post.all.order(id: 'DESC')
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: '追加に成功しました'
    else
      flash.now[:notice] = '追加に失敗しました'
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: '変更に成功しました'
    else
      # flash.now[:notice]が反応しない
      flash.now[:notice] = '変更に失敗しました'
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:alert] = '削除しました。'
    redirect_to posts_path
  end

  private

    def post_params
      params.permit(:title, :tag, :body)
    end
end
