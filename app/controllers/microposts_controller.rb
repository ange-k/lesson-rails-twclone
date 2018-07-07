class MicropostsController < ApplicationController
  def create
    @post = Micropost.new(micropost_param)
    @post.save
    render json: { post: @post }
  end

  def show
    @post = Micropost.find_by(id: params[:id])
    html = render_to_string partial: 'microposts/micropost', locals: { post: @post }
    render json: { html: html }
  end

  def destroy
  end

  private

  def micropost_param
    params.require(:micropost).permit(:user_id, :content)
  end
end
