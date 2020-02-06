class UsersController < ApplicationController
  skip_before_action :require_sign_in!, only: [:new, :create]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end


  def login_form
  end

  def login
    @user = User.find_by(name: params[:name], password: params[:password])

    if @user
      flash[:notice] = "ログインしました"
      redirect_to("/users/index")
    else
      render("users/login_form")
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :mail, :password, :password_confirmation)
    end

end
