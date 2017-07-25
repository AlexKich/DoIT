class UsersController < ApplicationController
  before_action :signed_in_user,
                only: [:index, :edit, :update, :destroy, :following, :followers]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.paginate(page: params[:page]).order(name: :asc)
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.fio = @user.fio3 + ' ' + @user.fio1.slice(0) + '. ' + @user.fio2.slice(0) + '.'
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the IT-base!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @user.fio = @user.fio3 + ' ' + @user.fio1.slice(0) + '. ' + @user.fio2.slice(0) + '.'
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

    def user_params

      params.require(:user).permit(:name, :email, :password, :fio, :fio1, :fio2, :fio3,
                                   :password_confirmation, :cleaning)
    end

    # Before filters

    def correct_user
      @user = User.find(params[:id])
      if current_user.admin?
      else
       redirect_to(root_url) unless current_user?(@user) 
      end
      
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
  end
