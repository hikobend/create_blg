# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # サインイン後の遷移先
  def after_sign_in_path_for(resource)
    case resource
    when User
      # 一般ユーザーのマイページ
      user_path(resource.id)
    end
  end

  def after_sign_out_path_for(_resource)
    root_path
  end
end
