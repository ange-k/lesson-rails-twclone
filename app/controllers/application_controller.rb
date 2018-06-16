class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # loginしていない場合、リダイレクトする
  def user_login?
    unless user_signed_in?
      redirect_to root_url
    end
  end
end
