class TopPagesController < ApplicationController
  def index
    if user_signed_in?
      @micropost = current_user.microposts.build
    end
  end
end
