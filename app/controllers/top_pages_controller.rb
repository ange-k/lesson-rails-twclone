class TopPagesController < ApplicationController
  def index
    if user_signed_in?
      @posts = Micropost.all
      @micropost = current_user.microposts.build
      @follow_users = current_user.followings.ids
      @relations = current_user.relationships
    end
  end
end
