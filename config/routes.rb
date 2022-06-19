# frozen_string_literal: true

Rails.application.routes.draw do
  get 'profiles/index'
  get 'profiles/show'
  get 'profiles/edit'
  devise_for :users
  # トップページに移動
  root to: 'home#top'
  # ログイン後の最初のページ
  resources :users, only: %i[show]
  resources :tags
  resources :posts
end
