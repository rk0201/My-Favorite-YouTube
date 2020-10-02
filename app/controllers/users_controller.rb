class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    if current_user == @user
      @articles = @user.articles.order(created_at: :desc)
    else
      @articles = @user.articles.where(status: :public).order(created_at: :desc)
    end
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_path(current_user), alert: '不正なアクセスです。'
    else
      render :edit
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'ユーザー情報を更新しました。'
    else
      render :edit
    end
  end
  
  def following
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end
  
  private
  def user_params
    params.require(:user).permit(:login_id, :name, :icon, :profile, :remove_icon, :email, :password )
  end

end
