class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: [:edit, :update]
  before_action :same_user_require, only:[:edit, :update, :destroy]

  def show
    @articles = @user.articles.paginate(page: params[:page], per_page: 5)
  end

  def index
    @user = User.paginate(page: params[:page], per_page:5)
  end


  def new 
    @user = User.new
  end

  def edit
  end

  def update 
    if @user.update(user_params)
      flash[:notice]= "your account update successfully"
      redirect_to articles_path
    else 
      render 'edit'
    end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome tp Alpha Blog, you have successfully signed up"
      redirect_to @user
      else
      render 'new'
    end
  end

  def destroy
    @user.destroy
    session[:user_id] = nil if @user == current_user 
    flash[:notice]= "all articles and assosiated data will deleted"
    redirect_to articles_path
  end

  private 
  
  def user_params
    params.require(:user).permit(:username, :email, :password,)
  end

  def set_user
    @user = User.find(params[:id])
  end
  
  def same_user_require
    if current_user != @user && !current_user.admin?
      flash[:alert] = "You can edit or delete your own data"
      redirect_to @user
    end
  end
end