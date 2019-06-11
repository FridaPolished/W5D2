class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if @user
      login(@user)
      # redirect_to main page
    else
      flash[:errors] = ["unable to login"]
      render :new
    end
  end

  def destroy
    logout
    render :new
  end

end
