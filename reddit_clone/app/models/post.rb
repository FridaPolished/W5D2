class Post < ApplicationRecord

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @post = Post.

  end

end
