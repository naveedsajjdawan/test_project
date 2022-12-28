class SessionController < ApplicationController
  def new 
  end

  def create 
  user = User.find_by(email:params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id]= user.id
      flash[:notice]= "successfully logedin"
      redirect_to user
    else
      flash.now[:alert]= "provided login details is incorect please check your credentials again"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to root_path
  end
  
end