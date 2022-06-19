# frozen_string_literal: true

class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all.order(id: 'DESC')
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to profiles_path, notice: '変更に成功しました'
    else
      # flash.now[:notice]が反応しない
      flash.now[:notice] = '変更に失敗しました'
      render :edit
    end
  end

  private

    def profile_params
      params.permit(:profile)
    end

end
