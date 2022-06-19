# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # トップページに移動
  root to: 'home#top'
  # ログイン後の最初のページ
  resources :users, only: %i[show]
  resources :tags
  resources :posts
  resources :profiles
  resources :contacts, only: %i[new create]
  resources :contacts, only: %i[new create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'
end
