class UsersController < ApplicationController
  def new 
    @user = User.new
  end

  def edit
<<<<<<< HEAD
    @user = User.new(params[:id])
  end

  def update 
=======
    @user = User.find(params[:id])
  end

  def update 
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "account updated successfully."
      redirect_to articles_path
    else 
      render 'edit'
    end 
>>>>>>> user-edit
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome tp Alpha Blog,  you have successfully signed up"
      redirect_to articles_path
      else
      render 'new'
    end
  end



  private 
  def user_params
    params.require(:user).permit(:username, :email, :password,)
  end

end