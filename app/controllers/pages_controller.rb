class PagesController < ApplicationController
  def home
    @posts = Post.last(6).reverse
    @posts1=@posts.first(3)
    @posts2=@posts.last(3)

  end
end
