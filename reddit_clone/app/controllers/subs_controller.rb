class SubsController < ApplicationController

  def new
    @sub = Sub.new
  end

  def show
    @sub = Sub.find(params[:id])
  end
  
  def edit
    @sub = Sub.find(params[:id])
    
  end
  
  def index
    @subs = Sub.all
  end

  def create
    @sub = Sub.new(sub_params)
    @sub.moderator_id = current_us


  end

  def update
  end

  def sub_params
    params.require(:sub).permit(:title, :description)
  end
end
