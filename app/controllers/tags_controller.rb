# frozen_string_literal: true

class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path, notice: '追加に成功しました'
    else
      # flash.now[:notice]が反応しない
      flash.now[:notice] = '追加に失敗しました'
      render :new
    end
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      redirect_to tags_path, notice: '変更に成功しました'
    else
      # flash.now[:notice]が反応しない
      flash.now[:notice] = '変更に失敗しました'
      render :edit
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:alert] = '削除しました。'
    redirect_to tags_path
  end

  private

  def tag_params
    params.permit(:name)
  end
end
