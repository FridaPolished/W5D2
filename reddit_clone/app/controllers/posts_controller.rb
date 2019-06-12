class PostsController < ApplicationController

  before_action :require_login

  def edit
    @post = Post.find(params[:id])
  end  

  def update 
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
       
      #redirect to post page 
    else 
      flash[:errors] = @post.errors.full_messages
      render :new
    end 

  end  


  private
  def post_params
    params.require(:post).permit(:title, :content, :sub_ids )
  end  

end
