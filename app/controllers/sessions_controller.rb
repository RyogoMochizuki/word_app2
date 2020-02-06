class SessionsController < ApplicationController

  skip_before_action :require_sign_in!, only: [:new, :create]
  before_action :set_user, only: [:create]

  def new
  end

  def create
    if @user.authenticate(session_params[:password])
      sign_in(@user)
      redirect_path = users_show_path @user
      redirect_to redirect_path
    else
      flash.now[:danger] = t('.flash.invalid_password')
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to login_path
  end

  def current_user
    remember_token = User.encrypt(cookies[:user_remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end  

  def logged_in?
    !current_user.nil?
  end
  
  private

    def set_user
      @user = User.find_by!(mail: session_params[:mail])
    rescue
      flash.now[:danger] = t('.flash.invalid_mail')
      render action: 'new'
    end

    # 許可するパラメータ
    def session_params
      params.require(:session).permit(:mail, :password)
    end
    
    def users_show_path user
      users_path + "/" + "#{user.id}"
    end
end