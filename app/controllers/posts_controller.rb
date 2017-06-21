class PostsController < ApplicationController
  before_action :find_post, only: [:show]

  def index
    @posts = Post.order("id DESC").all
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def find_post
    @post = Post.find(params[:id])
  end
end
