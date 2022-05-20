class ApplicationController < ActionController::Base
  before_action :set_user
  
  def after_sign_in_path_for(resource_or_scope)
    articles_path
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  private

  def set_user
    cookies[:user_id] = current_user || {}
  end
end
