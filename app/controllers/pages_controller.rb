class PagesController < ApplicationController
  def home
    @posts = Post.all.last(5).reverse
    if @posts.length < 4
    @posts1 = @posts
    else
    @posts1 = @posts.first(3)
    @posts2 = @posts.last(@posts.length-3)
    end
  end
end
