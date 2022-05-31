# frozen_string_literal: true

Rails.application.routes.draw do
  resources :memos
  devise_for :users
  # トップページに移動
  root to: 'home#top'
  # ログイン後の最初のページ
  resources :users, only: %i[show]
  resources :tags
end
