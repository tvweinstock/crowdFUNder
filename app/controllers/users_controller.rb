class UsersController < ApplicationController
  before_action :load_user, only:[:show, :edit, :update, :destroy]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: "Signed up!"
    else
      render "new", alert: "Something went wrong!"
    end
  end

  def show
    @projects = @user.projects
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice, "Information updated!"

    else
      render :edit, alert: "Something's not right, please try again!"
    end
  end

  def destroy
    session[:user_id] = nil
    @user.destroy
    redirect_to root_path, notice: "Bye for now! Hope to have some FUNding with you again soon!"
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def load_user
    @user = User.find(params[:id])
  end
end
